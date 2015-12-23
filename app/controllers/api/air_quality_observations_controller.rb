class Api::AirQualityObservationsController < ApplicationController
  def index
    query = AqoLocationProximityQuery.new(AQO.past_seven_days, params)
    if query.focal_point
      render json: query.nearby
    else
      render json: []
    end
  end
end
