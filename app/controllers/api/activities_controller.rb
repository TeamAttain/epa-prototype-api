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
    calculate = ActivityPercentageCalculator.new(
      Activity.where(date: Date.parse(params[:date]).in_time_zone.all_day)
    )
    render json: calculate.to_json
  end

  private

  def activity_params(parameters)
    parameters.permit(:lat, :lng, :location, :date)
  end
end
