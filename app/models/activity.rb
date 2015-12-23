class Activity < ActiveRecord::Base
  acts_as_mappable

  validates :location,
            inclusion: {
              in: %w(inside outside),
              message: "is not either 'inside' or 'outside'"
            }
  validates :lng, presence: true
  validates :lat, presence: true
end
