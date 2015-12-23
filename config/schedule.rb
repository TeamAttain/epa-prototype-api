require_relative 'application'

set :output, Rails.root.join('log', "#{Rails.env}.log")

every 12.hours do
  runner "AirQualityObservation.update_observations!"
end
