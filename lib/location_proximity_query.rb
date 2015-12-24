class LocationProximityQuery
  attr_reader :data, :zip_code, :lat, :lng

  def initialize(data, opts = {})
    @data = data
    @lat = opts[:lat]
    @lng = opts[:lng]
    @zip_code = opts[:zip_code]
  end

  def focal_point
    zip_code || [lat, lng]
  end

  def nearby
    data.within(100, origin: focal_point)
  end
end
