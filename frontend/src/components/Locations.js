import { nl2br } from '../utils/String';
import Info from '../icons/info';

export default function Locations({
  locations = [], 
  lastLocationElementRef = {},
  setHoveredLocation,
  setSelectedLocation,
  isLoading = false,
  hasMore = false
}) {

  return (
    <div className="p-4 flex flex-col gap-4">
      {locations.length > 0 && (
        <ul id="locations" role="list" aria-label="Locations" className="flex flex-col gap-4">
          {locations.map((location, index) => (
            <li 
              key={location.id}
              ref={index === locations.length - 1 ? lastLocationElementRef : null}
              className="relative p-4 border flex flex-col gap-4 shadow-md cursor-pointer"
              onMouseEnter={() => setHoveredLocation(location)}
              onMouseLeave={() => setHoveredLocation(null)}
              role="listitem"
            >
              <h3 className="font-semibold text-lg pr-8">{location.title.rendered}</h3>

              <div>
                <h4 className="font-medium">Address:</h4>
                <p dangerouslySetInnerHTML={{__html: nl2br(location.collection_centre_details.address)}}></p>
              </div>

              <div>
                <h4 className="font-medium">Open Hours:</h4>
                <p dangerouslySetInnerHTML={{__html: nl2br(location.collection_centre_details.openHours)}}></p>
              </div>
              
              <button 
                aria-label="More Details"
                className="duration-300 absolute top-0 right-0 p-4 hover:bg-gray-300" 
                onClick={() => setSelectedLocation(location)}
              >
                <Info/>
              </button>
            </li>
          ))}
        </ul>
      )}
      {isLoading && (
        <div className="text-center py-4">
          <div className="inline-block h-8 w-8 animate-spin rounded-full border-4 border-solid border-blue-500 border-r-transparent"></div>
        </div>
      )}
      <div className="text-center text-gray-500">
        {!hasMore && locations.length > 0 ? `No more locations to load` : locations.length === 0 && !isLoading ? `No results` : ''}
      </div>
    </div>
  )
}