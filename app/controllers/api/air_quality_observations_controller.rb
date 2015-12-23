class Api::AirQualityObservationsController < ApplicationController
  def index
    query = LocationProximityQuery.new(AQO.past_seven_days, params)
    if query.nearby
      render json: query.nearby
    else
      render json: []
    end
  end
end
