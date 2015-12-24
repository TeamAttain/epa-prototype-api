class AirQualityObservation < ActiveRecord::Base
  acts_as_mappable

  before_save :set_category

  scope :past_24_hours, -> { where('created_at >= ?', 24.hours.ago) }

  def self.update_observations!
    client = AirnowApiAdapter.new
    AirnowApiAdapter.observed_zip_codes.each do |code|
      client.readings_for(code).each do |reading|
        AirQualityObservation.where(
          date_observed: reading["DateObserved"],
          hour_observed: reading["HourObserved"],
          reporting_area: reading["ReportingArea"],
          parameter_name: reading["ParameterName"],
          state_code: reading["StateCode"]
        ).first_or_create(
          category: reading['Category']['Name'],
          aqi: reading['Category']['Number'],
          lat: reading["Latitude"],
          local_time_zone: reading["LocalTimeZone"],
          lng: reading["Longitude"]
        )
      end
    end
  end

  def categories
    [
      'Good',
      'Moderate',
      'Unhealthy for Sensitive Groups',
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
    range = air_quality_ranges.detect { |x| x.include? aqi }
    self.category = categories[air_quality_ranges.find_index(range)]
  end
end
