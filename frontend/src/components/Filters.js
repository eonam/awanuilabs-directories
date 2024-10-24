export default function Filters({filters = {}, regions = [], services = [], handleFilterChange}) {
  return (
    <form className="flex flex-col gap-2" onSubmit={e => e.preventDefault()}>
      <input
        id="search"
        type="text"
        className="w-full p-2 border rounded"
        placeholder="Search by location name"
        value={filters.searchQuery}
        onChange={(e) => handleFilterChange('searchQuery', e.target.value)}
      />

      <div className="flex gap-2">
        <select
          id="region"
          className="p-2 border rounded w-1/2"
          value={filters.selectedRegion}
          onChange={(e) => handleFilterChange('selectedRegion', e.target.value)}
        >
          <option value="">All Regions</option>
          {regions.map((region) => (
            <option key={region.id} value={region.id}>
              {region.name}
            </option>
          ))}
        </select>

        <select
          id="service"
          className="p-2 border rounded w-1/2"
          value={filters.selectedService}
          onChange={(e) => handleFilterChange('selectedService', e.target.value)}
        >
          <option value="">All Services</option>
          {services.map((service) => (
            <option key={service.id} value={service.id}>
              {service.name}
            </option>
          ))}
        </select>
      </div>
    </form>
  )
}