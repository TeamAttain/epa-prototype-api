class AqoLocationProximityQuery
  attr_reader :observations, :zip_code, :lat, :lng

  def initialize(observations, opts = {})
    @observations = observations
    @lat = opts[:lat]
    @lng = opts[:lng]
    @zip_code = opts[:zip_code]
  end

  def focal_point
    if zip_code
      observations.closest(origin: zip_code).first
    else
      observations.closest(origin: [lat, lng]).first
    end
  end

  def nearby
    observations.within(100, origin: focal_point)
  end
end
