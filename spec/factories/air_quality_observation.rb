FactoryGirl.define do
  factory :air_quality_observation do
    aqi { (0..200).to_a.sample }
    date_observed Faker::Time.between(Time.zone.now - 300, Time.zone.now)
    hour_observed { (0..25).to_a.sample }
    latitude Faker::Address.latitude
    longitude Faker::Address.longitude
    local_time_zone Faker::Address.time_zone
    parameter_name '03'
    reporting_area Faker::Address.city
    state_code Faker::Address.state_abbr
  end
end
