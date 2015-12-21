module AqiApiStubsHelper
  def stub_aqi_call
    stub_client = double("AQI API Client Stub")
    allow(AirnowApiAdapter).to receive(:new).and_return(stub_client)
    expect(stub_client).to receive(:readings_for).with('12201').and_return(
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
          "ReportingArea" => "Albany",
          "StateCode" => "NY"
        },
        {
          "AQI" => 52,
          "Category" => {
            "Name" => "Moderate",
            "Number" => 2
          },
          "DateObserved" => "2015-12-22 ",
          "HourObserved" => 10,
          "Latitude" => 42.681,
          "LocalTimeZone" => "EST",
          "Longitude" => -73.758,
          "ParameterName" => "PM2.5",
          "ReportingArea" => "Albany",
          "StateCode" => "NY"
        }
      ]
    )
    expect(stub_client).to receive(:readings_for).with('94203').and_return(
      [
        {
          "AQI" => 17,
          "Category" => {
            "Name" => "Good",
            "Number" => 1
          },
          "DateObserved" => "2015-12-22 ",
          "HourObserved" => 7,
          "Latitude" => 38.567,
          "LocalTimeZone" => "PST",
          "Longitude" => -121.467,
          "ParameterName" => "O3",
          "ReportingArea" => "Sacramento",
          "StateCode" => "CA"
        },
        {
          "AQI" => 38,
          "Category" => {
            "Name" => "Good",
            "Number" => 1
          },
          "DateObserved" => "2015-12-22 ",
          "HourObserved" => 7,
          "Latitude" => 38.567,
          "LocalTimeZone" => "PST",
          "Longitude" => -121.467,
          "ParameterName" => "PM2.5",
          "ReportingArea" => "Sacramento",
          "StateCode" => "CA"
        },
        {
          "AQI" => 3,
          "Category" => {
            "Name" => "Good",
            "Number" => 1
          },
          "DateObserved" => "2015-12-22 ",
          "HourObserved" => 7,
          "Latitude" => 38.567,
          "LocalTimeZone" => "PST",
          "Longitude" => -121.467,
          "ParameterName" => "PM10",
          "ReportingArea" => "Sacramento",
          "StateCode" => "CA"
        },
      ]
    )
  end
end
