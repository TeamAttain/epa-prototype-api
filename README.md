#### POST /api/activities


```json
{
  "activities": [
    {
      "lat": "63.21834725540589",
      "lng": "61.75044978773275",
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
#### POST /api/activities


```json
{
  "activities": [
    {
      "location": "outside"
    }
  ]
}
```

Response: 200
```json
{
  "lng": [
    "can't be blank"
  ],
  "lat": [
    "can't be blank"
  ]
}
```
#### POST /api/activities


```json
{
  "activities": [
    {
      "lat": "-79.47591130769808",
      "lng": "-172.55848059508585"
    },
    {
      "lat": "-19.333339802853516",
      "lng": "32.7266587437432"
    }
  ]
}
```

Response: 200
```json
{
  "location": [
    "is not either 'inside' or 'outside'"
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
      "aqi": 121,
      "category": "Unhealthy for Sensitive Groups",
      "date_observed": "2015-12-22T22:46:33.646Z",
      "hour_observed": 17,
      "lat": 40.5,
      "local_time_zone": "Asia/Tokyo",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "MI",
      "created_at": "2015-12-22T22:46:48.712Z",
      "updated_at": "2015-12-22T22:46:48.712Z",
      "zip_code": null
    },
    {
      "id": 12,
      "aqi": 16,
      "category": "Good",
      "date_observed": "2015-12-22T22:43:03.571Z",
      "hour_observed": 14,
      "lat": 40.5,
      "local_time_zone": "Europe/Paris",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "CA",
      "created_at": "2015-12-22T22:46:48.714Z",
      "updated_at": "2015-12-22T22:46:48.714Z",
      "zip_code": null
    },
    {
      "id": 13,
      "aqi": 190,
      "category": "Unhealthy",
      "date_observed": "2015-12-22T22:41:54.410Z",
      "hour_observed": 25,
      "lat": 40.5,
      "local_time_zone": "America/New_York",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "MS",
      "created_at": "2015-12-22T22:46:48.717Z",
      "updated_at": "2015-12-22T22:46:48.717Z",
      "zip_code": null
    },
    {
      "id": 14,
      "aqi": 141,
      "category": "Unhealthy for Sensitive Groups",
      "date_observed": "2015-12-22T22:44:40.747Z",
      "hour_observed": 5,
      "lat": 40.5,
      "local_time_zone": "Asia/Colombo",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "NJ",
      "created_at": "2015-12-22T22:46:48.720Z",
      "updated_at": "2015-12-22T22:46:48.720Z",
      "zip_code": null
    },
    {
      "id": 15,
      "aqi": 83,
      "category": "Moderate",
      "date_observed": "2015-12-22T22:45:59.964Z",
      "hour_observed": 8,
      "lat": 40.5,
      "local_time_zone": "Asia/Irkutsk",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "MI",
      "created_at": "2015-12-22T22:46:48.722Z",
      "updated_at": "2015-12-22T22:46:48.722Z",
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
      "aqi": 42,
      "category": "Good",
      "date_observed": "2015-12-30T22:44:33.014Z",
      "hour_observed": 1,
      "lat": 40.5,
      "local_time_zone": "Pacific/Honolulu",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "LA",
      "created_at": "2015-12-30T22:46:48.806Z",
      "updated_at": "2015-12-30T22:46:48.806Z",
      "zip_code": null
    },
    {
      "id": 32,
      "aqi": 94,
      "category": "Moderate",
      "date_observed": "2015-12-30T22:41:56.046Z",
      "hour_observed": 11,
      "lat": 40.5,
      "local_time_zone": "America/Lima",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "ND",
      "created_at": "2015-12-30T22:46:48.806Z",
      "updated_at": "2015-12-30T22:46:48.806Z",
      "zip_code": null
    },
    {
      "id": 33,
      "aqi": 60,
      "category": "Moderate",
      "date_observed": "2015-12-30T22:44:39.470Z",
      "hour_observed": 7,
      "lat": 40.5,
      "local_time_zone": "Europe/Berlin",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "WV",
      "created_at": "2015-12-30T22:46:48.806Z",
      "updated_at": "2015-12-30T22:46:48.806Z",
      "zip_code": null
    },
    {
      "id": 34,
      "aqi": 63,
      "category": "Moderate",
      "date_observed": "2015-12-30T22:42:51.354Z",
      "hour_observed": 4,
      "lat": 40.5,
      "local_time_zone": "America/Mexico_City",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "GA",
      "created_at": "2015-12-30T22:46:48.806Z",
      "updated_at": "2015-12-30T22:46:48.806Z",
      "zip_code": null
    },
    {
      "id": 35,
      "aqi": 88,
      "category": "Moderate",
      "date_observed": "2015-12-30T22:45:08.459Z",
      "hour_observed": 2,
      "lat": 40.5,
      "local_time_zone": "America/New_York",
      "lng": 47.5,
      "parameter_name": "03",
      "reporting_area": "R'lyeh",
      "state_code": "AZ",
      "created_at": "2015-12-30T22:46:48.806Z",
      "updated_at": "2015-12-30T22:46:48.806Z",
      "zip_code": null
    }
  ]
}
```
