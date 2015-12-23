sb_lat = 35.9927473
sb_lng = -78.9061682

100.times do
  AQO.create!(
    aqi: (0..200).to_a.sample,
    date_observed: Faker::Time.between(Time.zone.now - 300, Time.zone.now),
    hour_observed: (0..25).to_a.sample,
    lat: Faker::Address.latitude,
    lng: Faker::Address.longitude,
    local_time_zone: Faker::Address.time_zone,
    parameter_name: '03',
    reporting_area: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
    state_code: Faker::Address.state_abbr
  )
end

14.times do
  AQO.create!(
    aqi: (0..200).to_a.sample,
    date_observed: Faker::Time.between(Time.zone.now - 300, Time.zone.now),
    hour_observed: (0..25).to_a.sample,
    lat: sb_lat,
    lng: sb_lng,
    local_time_zone: Faker::Address.time_zone,
    parameter_name: '03',
    reporting_area: "Smashing Boxes",
    state_code: Faker::Address.state_abbr
  )
end

14.times do
  Activity.create!(
    lat: sb_lat,
    lng: sb_lng,
    location: %w(outside inside).sample,
    date: Time.zone.now
  )
end
