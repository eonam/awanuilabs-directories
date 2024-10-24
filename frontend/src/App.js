import React, { useState, useEffect, useRef, useCallback } from 'react';
import { GoogleMap, LoadScript, Marker } from '@react-google-maps/api';

import fetchAPI from './api/fetchAPI';

import MenuContext from './contexts/Menu';

import Main from './layouts/Main';
import Heading from './layouts/Heading';
import LeftPane from './layouts/LeftPane';
import MapWrapper from './layouts/MapWrapper';

import Filters from './components/Filters';
import Locations from './components/Locations';
import Dialog from './components/Dialog';
import MenuBackdrop from './components/MenuBackdrop';
import MenuTrigger from './components/MenuTrigger';

const defaultCenter = { lat: -36.8485, lng: 174.7633 }; // Auckland Central
const mapContainerStyle = { width: '100%', height: '100%' };

function App() {
  // Master List
  const [locations, setLocations] = useState([]);
  const [selectedLocation, setSelectedLocation] = useState(null);
  const [hoveredLocation, setHoveredLocation] = useState(null);

  // Pagination
  const [page, setPage] = useState(1);
  const [isLoading, setIsLoading] = useState(false);
  const [hasMore, setHasMore] = useState(true);
  const observer = useRef();

  // Mapping
  const [mapBounds, setMapBounds] = useState(null);
  const mapRef = useRef();

  // Filtering
  const [regions, setRegions] = useState([]);
  const [services, setServices] = useState([]);
  const [filters, setFilters] = useState({
    searchQuery: '',
    selectedRegion: '',
    selectedService: ''
  });

  // Observer for intersected last item
  const lastLocationElementRef = useCallback(node => {
    if (isLoading) return;
    
    if (observer.current) observer.current.disconnect();
    
    observer.current = new IntersectionObserver(entries => {
      if (entries[0].isIntersecting && hasMore) {
        setPage(prevPage => prevPage + 1);
      }
    }, {
      threshold: 0.8
    });

    if (node) observer.current.observe(node);
  }, [isLoading, hasMore]);

  // Function to fit map bounds to show all markers
  const fitMapToBounds = useCallback(() => {
    if (mapRef.current && locations.length > 0) {
      const bounds = new window.google.maps.LatLngBounds();
      
      locations.forEach(location => {
        bounds.extend({
          lat: parseFloat(location.collection_centre_details.latitude),
          lng: parseFloat(location.collection_centre_details.longitude)
        });
      });
      
      mapRef.current.fitBounds(bounds);
      setMapBounds(bounds);
    }
  }, [locations]);

  // Update map bounds when new locations are loaded
  useEffect(() => {
    if (locations.length > 0) {
      fitMapToBounds();
    }
  }, [locations, fitMapToBounds]);

  // Fetch Locations
  const fetchLocations = useCallback(async (pageNum, currentFilters) => {
    if (!hasMore) return;
  
    setIsLoading(true);
    try {
      const { searchQuery, selectedRegion, selectedService } = currentFilters;
      const response = await fetchAPI(
        `collection_centre?page=${pageNum}${searchQuery ? `&search=${searchQuery}` : ``}${selectedRegion ? `&region=${selectedRegion}` : ``}${selectedService ? `&service=${selectedService}` : ``}&orderby=date&order=asc`
      );
      
      if (!response.ok) {
        if (response.status === 400) {
          setHasMore(false);
          return;
        }
        throw new Error(`HTTP error! status: ${response.status}`);
      }
      
      const data = await response.json();
      
      if (!Array.isArray(data) || data.length === 0) {
        setHasMore(false);
        return;
      }

      setLocations((prevLocations) => {
        if (pageNum === 1) return data;
        return [...new Map([...prevLocations, ...data].map(item => [item.id, item])).values()];
      });
    } catch (error) {
      console.error('Error fetching locations:', error);
      setHasMore(false);
    } finally {
      setIsLoading(false);
    }
  }, []);

  // Fetch Taxonomies
  const fetchTaxonomies = async () => {
    try {
      const [regionsRes, servicesRes] = await Promise.all([
        fetchAPI('region'),
        fetchAPI('service')
      ]);
      const regionsData = await regionsRes.json();
      const servicesData = await servicesRes.json();

      setRegions(regionsData);
      setServices(servicesData);
    } catch (error) {
      console.error('Error fetching taxonomies:', error);
    }
  };

  useEffect(() => {
    fetchTaxonomies();
  }, []);

  // Handle filter changes with debounce
  const handleFilterChange = (filterType, value) => {
    setFilters(prevFilters => ({ ...prevFilters, [filterType]: value }));
    setPage(1);
    setHasMore(true);
    setLocations([]); // Clear locations when filters change
  };

  // Use effect for pagination and filtering
  useEffect(() => {
    const timeoutId = setTimeout(() => {
      fetchLocations(page, filters);
    }, 300); // Add debounce delay

    return () => clearTimeout(timeoutId);
  }, [page, filters, fetchLocations]);

  const getMarkerIcon = useCallback((location) => ({
    path: "M 7,13 C 7,13 11.2,7.519596 11.2,5.2 11.2,2.8804041 9.3195958,1 7,1 4.680404,1 2.8,2.8804041 2.8,5.2 2.8,7.519596 7,13 7,13 Z",
    fillColor: hoveredLocation?.id === location.id ? '#327fef' : '#ea4335',
    fillOpacity: 1,
    strokeWeight: 1,
    strokeColor: hoveredLocation?.id === location.id ? '#105bc9' : '#c32214',
    scale: 3,
  }), [hoveredLocation]);

  return (
    <Main>
      <MenuContext>
        <LeftPane>
          <Heading>
            <Filters filters={filters} regions={regions} services={services} handleFilterChange={handleFilterChange}/>
          </Heading>
          <Locations
            locations={locations}
            lastLocationElementRef={lastLocationElementRef}
            setHoveredLocation={setHoveredLocation}
            setSelectedLocation={setSelectedLocation}
            isLoading={isLoading}
            hasMore={hasMore}
          />
        </LeftPane>
        <MapWrapper>
          <LoadScript googleMapsApiKey="AIzaSyD5LWkGeItRhDGB3VjLjWBxaLsbk7foFTY">
            <GoogleMap
              mapContainerStyle={mapContainerStyle}
              zoom={13}
              center={defaultCenter}
              options={{
                mapTypeControl: false,    // Disable Map/Satellite options
                fullscreenControl: false, // Disable fullscreen toggle
                streetViewControl: false, // Disable draggable Street View icon

              }}
              onLoad={map => {
                mapRef.current = map;
                if (locations.length > 0) {
                  fitMapToBounds();
                }
              }}
            >
              {locations.map(location => (
                <Marker
                  key={location.id}
                  position={{
                    lat: parseFloat(location.collection_centre_details.latitude),
                    lng: parseFloat(location.collection_centre_details.longitude)
                  }}
                  onClick={() => setSelectedLocation(location)}
                  icon={getMarkerIcon(location)}
                  animation={
                    hoveredLocation?.id === location.id ? window.google.maps.Animation.BOUNCE : null
                  }
                />
              ))}
            </GoogleMap>
          </LoadScript>
        </MapWrapper>
        {selectedLocation && (
          <Dialog location={selectedLocation} setSelectedLocation={setSelectedLocation}/>
        )}
        
        <MenuTrigger/>
        <MenuBackdrop/>
      </MenuContext>
    </Main>
  );
}

export default App;