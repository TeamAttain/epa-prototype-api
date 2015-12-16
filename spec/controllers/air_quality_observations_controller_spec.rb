require 'rails_helper'

describe AirQualityObservationsController do
  let(:json) { JSON.parse(response.body) }

  describe 'index' do
    before do
      create_list(:air_quality_observation, 10)
    end

    it 'gets all data' do
      get :index
      expect(
        json.map { |record| record['id'] }
      ).to eq AirQualityObservation.all.map(&:id)
    end
  end
end
