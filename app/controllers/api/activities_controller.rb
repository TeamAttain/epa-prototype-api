class Api::ActivitiesController < ApplicationController
  def create
    Activity.transaction do
      params[:activities].each do |activity|
        @last_activity = Activity.new(activity_params(activity))
        @last_activity.save!
      end
    end

  rescue ActiveRecord::RecordInvalid
    render json: @last_activity.errors.to_hash
  end

  def index
    activities = Activity.where(date: Date.parse(params[:date]).to_time.all_day)
    if activities.present?
      inside = activities.select { |activity| activity.location == 'inside' }.count
      outside = activities.select { |activity| activity.location == 'outside' }.count
      render json: {
        activities: [
          {
            id: 1,
            percentage_outside: (outside.to_f / (inside + outside).to_f) * 100,
            inside: inside,
            outside: outside
          }
        ]
      }
    else
      render json: {
        inside: 0,
        outside: 0
      }
    end
  end

  private

  def activity_params(parameters)
    parameters.permit(:lat, :lng, :location, :date)
  end
end
