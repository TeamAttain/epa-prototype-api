FactoryGirl.define do
  factory :activity do
    lat { Faker::Address.latitude }
    lng { Faker::Address.longitude }
    location { %w(inside outside).sample }
    date { Time.zone.now }
  end
end
