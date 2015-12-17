require 'rails_helper'

describe Api::AirQualityObservationsController do
  let(:json) { JSON.parse(response.body) }

  before do
    create_list(:air_quality_observation, 10)
  end

  describe 'index' do
    let!(:nearby_observations) do
      create_list(:air_quality_observation, 5, reporting_area: "R'lyeh", lat: 40.5, lng: 47.5)
    end
    let(:lat) { nearby_observations.first.lat + 1 }
    let(:lng) { nearby_observations.first.lng + 1 }

    it 'gets all data' do
      get :index, lat: lat, lng: lng
      expect(
        json.map { |record| record['id'] }
      ).to eq nearby_observations.map(&:id)
    end

    it 'only returns data from past 7 days' do
      old_observations = nearby_observations
      Timecop.freeze(Time.zone.now + 8.days) do
        fresh_observations = create_list(
          :air_quality_observation,
          5,
          reporting_area: "R'lyeh",
          lat: 40.5,
          lng: 47.5
        )
        get :index, lat: fresh_observations.first.lat, lng: fresh_observations.first.lng
        expect(json.count).to eq 5
        old_observations.each do |observation|
          expect(
            json.map { |record| record['id'] }
          ).to_not include observation.id
        end
      end
    end
  end
end
