#### GET /api/activities


```json
{
  "date": "22/12/2015"
}
```

Response: 200
```json
{
  "activities": [
    {
      "id": 1,
      "percentage_outside": 30.0,
      "inside": 14,
      "outside": 6
    }
  ]
}
```
#### POST /api/activities


```json
{
  "activities": [
    {
      "lat": "-11.848987360839402",
      "lng": "-144.50723627473658",
      "location": "outside"
    }
  ]
}
```

Response: 200
```json
{
  "activities": [
    "success!"
  ]
}
```
#### GET /api/air_quality_observations


```json
{
  "lat": "41.5",
  "lng": "48.5"
}
```

Response: 200
```json
{
  "air_quality_observations": [
    {
      "id": 11,
      "aqi": 185,
      "category": "Unhealthy",
      "date_observed": "2015-12-22T23:28:24.649Z",
      "hour_observed": 12,
      "lat": 40.5,
      "local_time_zone": "America/New_York",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "FL",
      "created_at": "2015-12-22T23:32:22.713Z",
      "updated_at": "2015-12-22T23:32:22.713Z",
      "zip_code": "48293-0507"
    },
    {
      "id": 12,
      "aqi": 196,
      "category": "Unhealthy",
      "date_observed": "2015-12-22T23:31:49.115Z",
      "hour_observed": 1,
      "lat": 40.5,
      "local_time_zone": "Europe/Athens",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "OH",
      "created_at": "2015-12-22T23:32:22.715Z",
      "updated_at": "2015-12-22T23:32:22.715Z",
      "zip_code": "27975"
    },
    {
      "id": 13,
      "aqi": 87,
      "category": "Moderate",
      "date_observed": "2015-12-22T23:32:07.082Z",
      "hour_observed": 25,
      "lat": 40.5,
      "local_time_zone": "America/Monterrey",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "WY",
      "created_at": "2015-12-22T23:32:22.718Z",
      "updated_at": "2015-12-22T23:32:22.718Z",
      "zip_code": "88684-9680"
    },
    {
      "id": 14,
      "aqi": 11,
      "category": "Good",
      "date_observed": "2015-12-22T23:28:13.947Z",
      "hour_observed": 8,
      "lat": 40.5,
      "local_time_zone": "America/Lima",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "WY",
      "created_at": "2015-12-22T23:32:22.720Z",
      "updated_at": "2015-12-22T23:32:22.720Z",
      "zip_code": "43453-2363"
    },
    {
      "id": 15,
      "aqi": 87,
      "category": "Moderate",
      "date_observed": "2015-12-22T23:28:01.673Z",
      "hour_observed": 2,
      "lat": 40.5,
      "local_time_zone": "Europe/Moscow",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "SC",
      "created_at": "2015-12-22T23:32:22.723Z",
      "updated_at": "2015-12-22T23:32:22.723Z",
      "zip_code": "47985-9428"
    }
  ]
}
```
