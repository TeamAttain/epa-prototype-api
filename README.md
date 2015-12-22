#### POST /activities


```json
{
  "activities": [
    {
      "activityId": "51007",
      "activityParentId": "90019",
      "calories": "230",
      "description": "7mph",
      "distance": "2.04",
      "duration": "1097053",
      "hasStartTime": true,
      "isFavorite": true,
      "logId": "1154701",
      "name": "Treadmill, 0% Incline",
      "startTime": "00:25",
      "location": "outside",
      "steps": "3783"
    }
  ]
}
```

Response: 200
```json
[
  "success"
]
```
#### POST /activities


```json
{
  "activities": [
    {
      "activityId": "51007",
      "activityParentId": "90019",
      "calories": "230",
      "description": "7mph",
      "distance": "2.04",
      "duration": "1097053",
      "hasStartTime": true,
      "isFavorite": true,
      "logId": "1154701",
      "name": "Treadmill, 0% Incline",
      "startTime": "00:25",
      "location": "outside",
      "steps": "3783"
    },
    {
      "activityId": "51007",
      "activityParentId": "90019",
      "calories": "230",
      "description": "7mph",
      "distance": "2.04",
      "duration": "1097053",
      "hasStartTime": true,
      "isFavorite": true,
      "logId": "1154701",
      "name": "Treadmill, 0% Incline",
      "startTime": "00:25",
      "location": "junk",
      "steps": "3783"
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
[
  {
    "id": 11,
    "aqi": 185,
    "category": null,
    "date_observed": "2015-12-22T18:00:54.238Z",
    "hour_observed": 16,
    "lat": 40.5,
    "local_time_zone": "Pacific/Port_Moresby",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "NC",
    "created_at": "2015-12-22T18:05:37.482Z",
    "updated_at": "2015-12-22T18:05:37.482Z"
  },
  {
    "id": 12,
    "aqi": 127,
    "category": null,
    "date_observed": "2015-12-22T18:04:37.258Z",
    "hour_observed": 10,
    "lat": 40.5,
    "local_time_zone": "America/Bogota",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "CT",
    "created_at": "2015-12-22T18:05:37.485Z",
    "updated_at": "2015-12-22T18:05:37.485Z"
  },
  {
    "id": 13,
    "aqi": 67,
    "category": null,
    "date_observed": "2015-12-22T18:05:08.289Z",
    "hour_observed": 2,
    "lat": 40.5,
    "local_time_zone": "Europe/Bratislava",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "MT",
    "created_at": "2015-12-22T18:05:37.487Z",
    "updated_at": "2015-12-22T18:05:37.487Z"
  },
  {
    "id": 14,
    "aqi": 66,
    "category": null,
    "date_observed": "2015-12-22T18:03:04.881Z",
    "hour_observed": 25,
    "lat": 40.5,
    "local_time_zone": "America/Tijuana",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "TN",
    "created_at": "2015-12-22T18:05:37.490Z",
    "updated_at": "2015-12-22T18:05:37.490Z"
  },
  {
    "id": 15,
    "aqi": 118,
    "category": null,
    "date_observed": "2015-12-22T18:03:32.309Z",
    "hour_observed": 4,
    "lat": 40.5,
    "local_time_zone": "Asia/Tehran",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "SD",
    "created_at": "2015-12-22T18:05:37.492Z",
    "updated_at": "2015-12-22T18:05:37.492Z"
  }
]
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
[
  {
    "id": 31,
    "aqi": 1,
    "category": null,
    "date_observed": "2015-12-30T18:04:24.256Z",
    "hour_observed": 9,
    "lat": 40.5,
    "local_time_zone": "Europe/Kiev",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "MD",
    "created_at": "2015-12-30T18:05:37.561Z",
    "updated_at": "2015-12-30T18:05:37.561Z"
  },
  {
    "id": 32,
    "aqi": 142,
    "category": null,
    "date_observed": "2015-12-30T18:01:59.096Z",
    "hour_observed": 16,
    "lat": 40.5,
    "local_time_zone": "Europe/Athens",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "NJ",
    "created_at": "2015-12-30T18:05:37.561Z",
    "updated_at": "2015-12-30T18:05:37.561Z"
  },
  {
    "id": 33,
    "aqi": 72,
    "category": null,
    "date_observed": "2015-12-30T18:01:07.702Z",
    "hour_observed": 15,
    "lat": 40.5,
    "local_time_zone": "Asia/Tokyo",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "AR",
    "created_at": "2015-12-30T18:05:37.561Z",
    "updated_at": "2015-12-30T18:05:37.561Z"
  },
  {
    "id": 34,
    "aqi": 76,
    "category": null,
    "date_observed": "2015-12-30T18:05:33.723Z",
    "hour_observed": 4,
    "lat": 40.5,
    "local_time_zone": "Asia/Kuala_Lumpur",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "WV",
    "created_at": "2015-12-30T18:05:37.561Z",
    "updated_at": "2015-12-30T18:05:37.561Z"
  },
  {
    "id": 35,
    "aqi": 164,
    "category": null,
    "date_observed": "2015-12-30T18:02:36.590Z",
    "hour_observed": 22,
    "lat": 40.5,
    "local_time_zone": "Asia/Kolkata",
    "lng": 47.5,
    "parameter_name": "03",
    "reporting_area": "R'lyeh",
    "state_code": "MI",
    "created_at": "2015-12-30T18:05:37.561Z",
    "updated_at": "2015-12-30T18:05:37.561Z"
  }
]
```
