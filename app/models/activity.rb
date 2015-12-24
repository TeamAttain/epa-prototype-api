class Activity < ActiveRecord::Base
  acts_as_mappable

  validates :location,
            inclusion: {
              in: %w(inside outside),
              message: "is not either 'inside' or 'outside'"
            }
  validates :lng, presence: true
  validates :lat, presence: true

  scope :past_24_hours, -> { where('date >= ?', 24.hours.ago) }

  def self.gen_bogus_data!
    AirnowApiAdapter.observed_zip_codes.each do |zip_code|
      observation = AQO.where(zip_code: zip_code).first
      next unless observation
      rand(20..100).times do
        Activity.create(
          lat: observation.lat,
          lng: observation.lng,
          date: Time.zone.now,
          location: 'inside'
        )
      end
      rand(20..100).times do
        Activity.create(
          lat: observation.lat,
          lng: observation.lng,
          date: Time.zone.now,
          location: 'outside'
        )
      end
    end
  end
end
