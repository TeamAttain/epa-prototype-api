class ActivitiesController < ApplicationController
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

  private

  def activity_params(parameters)
    {
      fb_activity_id: parameters[:activityId],
      fb_activity_parent_id: parameters[:activityParentId],
      calories: parameters[:calories],
      description: parameters[:description],
      distance: parameters[:distance],
      duration: parameters[:duration],
      has_start_time: parameters[:hasStartTime],
      is_favorite: parameters[:isFavorite],
      log_id: parameters[:logId],
      name: parameters[:name],
      start_time: parameters[:startTime],
      location: parameters[:location],
      steps: parameters[:steps]
    }
  end
end
