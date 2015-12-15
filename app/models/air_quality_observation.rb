class AirQualityObservation < ActiveRecord::Base
  before_save :set_category
  def categories
    [
      'Good',
      'Moderate',
      'Unhealthy for Sensitve Groups',
      'Unhealthy',
      'Very Unhealthy',
      'Hazardous'
    ]
  end

  private
  def set_category
    air_quality_ranges = [
      (0..50),
      (51..100),
      (101..150),
      (151..200),
      (201..300),
      (301..500)
    ]
    range = air_quality_ranges.select{ |x| x.include? self.aqi }.first
    categories[air_quality_ranges.find_index(range)]
  end
end
