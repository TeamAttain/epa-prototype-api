require 'rails_helper'

describe AirQualityObservation do
  before do
    create_list(:air_quality_observation, 10)
  end

  describe 'closest' do
    let(:closest_observation) { AQO.first }
    let(:lng) { closest_observation.lng }
    let(:lat) { closest_observation.lat }

    it 'finds the record closes the lat and long' do
      expect(
        AQO.closest(origin: [lat, lng])
      ).to include closest_observation
    end
  end
end
