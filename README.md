# EPA Prototype API

## Install

```
git clone git@github.com:smashingboxes/epa-prototype-api.git
cd epa-prototype-api
gem install bundler
bundle install
rails s
```

## Endpoints

### GET Observations

**GET:** /api/air_quality_observations?lat=9.99&lng=-9.99

**Response**
```json
[
  {
                "aqi" => 35,
           "category" => nil,
         "created_at" => "2015-12-24T22:23:53.007Z",
      "date_observed" => "2015-12-24T22:20:17.542Z",
      "hour_observed" => 14,
                 "id" => 19,
                "lat" => 40.5,
                "lng" => 47.5,
    "local_time_zone" => "Europe/Belgrade",
     "parameter_name" => "03",
     "reporting_area" => "R'lyeh",
         "state_code" => "ME",
         "updated_at" => "2015-12-24T22:23:53.007Z"
  },
  {
                "aqi" => 62,
           "category" => nil,
         "created_at" => "2015-12-24T22:23:53.007Z",
      "date_observed" => "2015-12-24T22:22:22.108Z",
      "hour_observed" => 22,
                 "id" => 20,
                "lat" => 40.5,
                "lng" => 47.5,
    "local_time_zone" => "Pacific/Tongatapu",
     "parameter_name" => "03",
     "reporting_area" => "R'lyeh",
         "state_code" => "RI",
         "updated_at" => "2015-12-24T22:23:53.007Z"
  }
]
```
