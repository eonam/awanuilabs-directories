import { GoogleMap, LoadScript, Marker } from '@react-google-maps/api';

const defaultCenter = { lat: -36.8485, lng: 174.7633 }; // Auckland Central
const mapContainerStyle = { width: '100%', height: '100%' };

export default function Map({
  mapRef = {}, 
  fitMapToBounds, 
  locations = [], 
  setSelectedLocation, 
  getMarkerIcon, 
  hoveredLocation = {}
}) {
  console.log(locations)
  return (
    <div className="w-full h-full bg-gray-200">
      <LoadScript googleMapsApiKey="AIzaSyD5LWkGeItRhDGB3VjLjWBxaLsbk7foFTY">
        <GoogleMap
          mapContainerStyle={mapContainerStyle}
          zoom={13}
          center={defaultCenter}
          onLoad={map => {
            mapRef.current = map;
            if (locations?.length > 0) {
              fitMapToBounds();
            }
          }}
        >
          {locations?.map(location => (
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
    </div>
  )
}