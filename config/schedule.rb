require_relative 'application'

set :output, Rails.root.join('log', "#{Rails.env}.log")

every 2.hours do
  runner "AirQualityObservation.update_observations!"
  runner "Activity.gen_bogus_data!"
end
