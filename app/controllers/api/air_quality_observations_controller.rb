class Api::AirQualityObservationsController < ApplicationController
  def index
    if params[:zip_code]
      location = AQO.past_seven_days.closest(origin: params[:zip_code]).first
    elsif params[:lat] && params[:lng]
      location = AQO.past_seven_days.closest(origin: [params[:lat], params[:lng]]).first
    end
    if location
      render json: AQO.within(100, origin: location).past_seven_days
    else
      render json: []
    end
  end
end
