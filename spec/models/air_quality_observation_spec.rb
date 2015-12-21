require 'rails_helper'
require_relative '../helpers/aqi_api_stubs_helper'

describe AirQualityObservation do
  include AqiApiStubsHelper

  before do
    create_list(:air_quality_observation, 10)
  end

  describe '#closest' do
    let(:closest_observation) { AQO.first }
    let(:lng) { closest_observation.lng }
    let(:lat) { closest_observation.lat }

    it 'finds the record closes the lat and long' do
      expect(
        AQO.closest(origin: [lat, lng])
      ).to include closest_observation
    end
  end

  describe '.update_observations!' do
    before do
      allow(AirnowApiAdapter).to receive(:observed_zip_codes).and_return(['12201', '94203'])
      stub_aqi_call
    end

    it 'will call the air quality API adaptor for each zip code' do
      expect do
        AirQualityObservation.update_observations!
      end.to change { AirQualityObservation.count }.by 5
    end
  end
end
