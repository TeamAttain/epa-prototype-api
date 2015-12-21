require 'rails_helper'

describe AirnowApiAdapter do
  subject { AirnowApiAdapter.new }

  describe '#readings_for' do
    before do
      stub_client = double()
      allow(AirnowApiAdapter).to receive(:get).with(
       "/aq/observation/zipCode/current",
       {
         query: {
           API_KEY: Rails.application.secrets.air_now_api_key,
           format: "application/json",
           distance: "25",
           zipCode: 27615
         }
       }
      ).and_return(
        [
          {
            "AQI" => 10,
            "Category" => {
              "Name" => "Good",
              "Number" => 1
            },
            "DateObserved" => "2015-12-22 ",
            "HourObserved" => 10,
            "Latitude" => 42.681,
            "LocalTimeZone" => "EST",
            "Longitude" => -73.758,
            "ParameterName" => "O3",
            "ReportingArea" => "Raleigh",
            "StateCode" => "NC"
          },
        ]
      )
    end

    it 'will gather readings for a zip code' do
      expect(subject.readings_for(27615).count).to eq 1
      expect(subject.readings_for(27615).first["StateCode"]).to eq "NC"
    end
  end
end
