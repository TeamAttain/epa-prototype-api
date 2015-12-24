class Api::ActivitiesController < ApplicationController
  def create
    Activity.transaction do
      params[:activities].each do |activity|
        @last_activity = Activity.new(activity_params(activity))
        @last_activity.save!
      end
    end
    render json: ['success!']

  rescue ActiveRecord::RecordInvalid
    render json: @last_activity.errors.to_hash
  end

  def index
    activities = LocationProximityQuery.new(
      Activity.past_24_hours,
      zip_code: params[:zip_code]
    ).nearby
    calculate = ActivityPercentageCalculator.new(activities)
    render json: calculate.to_json
  end

  private

  def activity_params(parameters)
    parameters.permit(:lat, :lng, :location, :date)
  end
end
