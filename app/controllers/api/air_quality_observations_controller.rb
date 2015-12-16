class Api::AirQualityObservationsController < ApplicationController
  def index
    location = AQO.closest(origin: [params[:lat], params[:lng]]).first
    if location
      render json: AQO.within(100, origin: location).where('created_at >= ?', 1.week.ago)
    else
      render json: []
    end
  end
end
