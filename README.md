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
      "percentage_outside": 50.0,
      "inside": 10,
      "outside": 10
    }
  ]
}
```
#### POST /api/activities


```json
{
  "activities": [
    {
      "lat": "87.19967961481353",
      "lng": "114.45524448435248",
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
      "aqi": 100,
      "category": "Moderate",
      "date_observed": "2015-12-22T23:27:12.479Z",
      "hour_observed": 20,
      "lat": 40.5,
      "local_time_zone": "Europe/Madrid",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "NJ",
      "created_at": "2015-12-22T23:30:16.430Z",
      "updated_at": "2015-12-22T23:30:16.430Z",
      "zip_code": null
    },
    {
      "id": 12,
      "aqi": 78,
      "category": "Moderate",
      "date_observed": "2015-12-22T23:27:24.722Z",
      "hour_observed": 19,
      "lat": 40.5,
      "local_time_zone": "Pacific/Midway",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "NV",
      "created_at": "2015-12-22T23:30:16.432Z",
      "updated_at": "2015-12-22T23:30:16.432Z",
      "zip_code": null
    },
    {
      "id": 13,
      "aqi": 13,
      "category": "Good",
      "date_observed": "2015-12-22T23:29:31.023Z",
      "hour_observed": 9,
      "lat": 40.5,
      "local_time_zone": "Asia/Colombo",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "MI",
      "created_at": "2015-12-22T23:30:16.434Z",
      "updated_at": "2015-12-22T23:30:16.434Z",
      "zip_code": null
    },
    {
      "id": 14,
      "aqi": 61,
      "category": "Moderate",
      "date_observed": "2015-12-22T23:25:21.751Z",
      "hour_observed": 16,
      "lat": 40.5,
      "local_time_zone": "Asia/Irkutsk",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "SC",
      "created_at": "2015-12-22T23:30:16.437Z",
      "updated_at": "2015-12-22T23:30:16.437Z",
      "zip_code": null
    },
    {
      "id": 15,
      "aqi": 75,
      "category": "Moderate",
      "date_observed": "2015-12-22T23:25:51.077Z",
      "hour_observed": 0,
      "lat": 40.5,
      "local_time_zone": "Asia/Kolkata",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "AK",
      "created_at": "2015-12-22T23:30:16.440Z",
      "updated_at": "2015-12-22T23:30:16.440Z",
      "zip_code": null
    }
  ]
}
```
#### GET /api/air_quality_observations


```json
{
  "lat": "40.5",
  "lng": "47.5"
}
```

Response: 200
```json
{
  "air_quality_observations": [
    {
      "id": 31,
      "aqi": 160,
      "category": "Unhealthy",
      "date_observed": "2015-12-30T23:26:54.841Z",
      "hour_observed": 12,
      "lat": 40.5,
      "local_time_zone": "Australia/Melbourne",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "UT",
      "created_at": "2015-12-30T23:30:16.515Z",
      "updated_at": "2015-12-30T23:30:16.515Z",
      "zip_code": null
    },
    {
      "id": 32,
      "aqi": 81,
      "category": "Moderate",
      "date_observed": "2015-12-30T23:28:58.364Z",
      "hour_observed": 5,
      "lat": 40.5,
      "local_time_zone": "Africa/Nairobi",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "GA",
      "created_at": "2015-12-30T23:30:16.515Z",
      "updated_at": "2015-12-30T23:30:16.515Z",
      "zip_code": null
    },
    {
      "id": 33,
      "aqi": 71,
      "category": "Moderate",
      "date_observed": "2015-12-30T23:28:51.251Z",
      "hour_observed": 21,
      "lat": 40.5,
      "local_time_zone": "Europe/Moscow",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "OR",
      "created_at": "2015-12-30T23:30:16.515Z",
      "updated_at": "2015-12-30T23:30:16.515Z",
      "zip_code": null
    },
    {
      "id": 34,
      "aqi": 133,
      "category": "Unhealthy for Sensitive Groups",
      "date_observed": "2015-12-30T23:27:55.350Z",
      "hour_observed": 22,
      "lat": 40.5,
      "local_time_zone": "Australia/Adelaide",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "WY",
      "created_at": "2015-12-30T23:30:16.515Z",
      "updated_at": "2015-12-30T23:30:16.515Z",
      "zip_code": null
    },
    {
      "id": 35,
      "aqi": 178,
      "category": "Unhealthy",
      "date_observed": "2015-12-30T23:27:39.026Z",
      "hour_observed": 5,
      "lat": 40.5,
      "local_time_zone": "Asia/Dhaka",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "MA",
      "created_at": "2015-12-30T23:30:16.515Z",
      "updated_at": "2015-12-30T23:30:16.515Z",
      "zip_code": null
    }
  ]
}
```
