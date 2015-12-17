class Activity < ActiveRecord::Base
  validates :location,
            inclusion: {
              in: %w(inside outside),
              message: "is not either 'inside' or 'outside'"
            }
end
