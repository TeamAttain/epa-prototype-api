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
      "percentage_outside": 35.0,
      "inside": 13,
      "outside": 7
    }
  ]
}
```
#### POST /api/activities


```json
{
  "activities": [
    {
      "lat": "-89.04119923716316",
      "lng": "110.94999132907799",
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
