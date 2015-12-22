class Activity < ActiveRecord::Base
  validates :location,
            inclusion: {
              in: %w(inside outside),
              message: "is not either 'inside' or 'outside'"
            }
  validates_presence_of :lng
  validates_presence_of :lat
end
