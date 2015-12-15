class AirQualityObservationsController < ApplicationController
  def index
    render json: AirQualityObservation.all
  end
end
