class AirQualityObservationsController < ApplicationController
  def index
    location = AQO.closest(origin: [params[:lat], params[:lng]]).first
    render json: AQO.within(100, origin: location).where('created_at >= ?', 1.week.ago)
  end
end
