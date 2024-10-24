import { nl2br } from '../utils/String';
import Close from '../icons/close';
import MapPin from '../icons/map-pin';

export default function Dialog({location = null, setSelectedLocation}) {
  if (!location) return;
  
  const details = location?.collection_centre_details
  const services = location?.taxonomies?.services;

  return (
    <div className="z-50 fixed inset-0 bg-gray-800 bg-opacity-75 flex items-center justify-center" onClick={() => setSelectedLocation(null)}>
      <div className="relative bg-white p-8 w-[calc(100%-2rem)] md:w-[calc(768px-2rem)] h-auto sm:max-h-[90%] overflow-y-auto flex flex-col gap-4" onClick={e => e.stopPropagation()}>
        <h3 className="font-bold text-xl mb-2 pr-8">
          {location.title.rendered}
        </h3>

        <div>
          <h4 className="font-medium">Address:</h4>
          <p dangerouslySetInnerHTML={{__html: nl2br(details?.address)}}></p>
        </div>

        <div>
          <h4 className="font-medium">Open Hours:</h4>
          <p dangerouslySetInnerHTML={{__html: nl2br(details?.openHours)}}></p>
        </div>

        <div>
          <h4 className="font-medium">Contact Information:</h4>
          <p dangerouslySetInnerHTML={{__html: nl2br(details?.contactInformation)}}></p>
        </div>

        <div>
          <h4 className="font-medium">Payment Facility:</h4>
          <p dangerouslySetInnerHTML={{__html: nl2br(details?.paymentFacilities)}}></p>
        </div>

        <div>
          <h4 className="font-medium">Test Type:</h4>
          {services?.length > 0 && (
            <ul>
              {services.map((service, index) => <li key={index}>{service.name}</li>)}
            </ul>
          )}
        </div>

        <div>
          <h4 className="font-medium">Accessibility:</h4>
          <p dangerouslySetInnerHTML={{__html: nl2br(details?.accessibility)}}></p>
        </div>

        <div>
          <a target="_blank" title="Launch Google Map" href={`http://maps.google.com/maps?q=${details?.latitude},${details?.longitude}`} className="flex gap-2 items-center justify-start font-medium text-primary"><MapPin/> View On Google Map</a>
        </div>

        <button
          className="absolute top-[34px] right-[30px]"
          onClick={() => setSelectedLocation(null)}
          aria-label="Close"
        >
          <Close size={24}/>
        </button>
      </div>
    </div>
  );
}