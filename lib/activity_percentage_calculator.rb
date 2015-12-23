class ActivityPercentageCalculator
  attr_reader :activities

  def initialize(activities)
    @activities = activities
  end

  def inside_activities
    @activities.where(location: 'inside').count
  end

  def outside_activities
    @activities.where(location: 'outside').count
  end

  def percentage_of_outside_activities
    (outside_activities.to_f / (inside_activities + outside_activities).to_f) * 100
  end

  def to_json
    {
      activities: [
        {
          id: 1,
          percentage_outside: percentage_of_outside_activities,
          inside: inside_activities,
          outside: outside_activities
        }
      ]
    }
  end
end
