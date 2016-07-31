This is a rails api for the smartpath project:

Add the header:
Content-Type: application/json

Request:

`http://localhost:3000/trees` to GET a list of all the trees:

`[{"id":1,"latitude":-38.14571292,"longitude":144.365187}]`

`http://localhost:3000/trees/[id]` to GET data on a single tree:

`{"id":1,"latitude":-38.14571292,"longitude":144.365187}`

`http://localhost:3000/trees/bounds` to POST data that looks like this:

```
{
    "data": {
        "latTopLeft": -1000,
        "longTopLeft": -1000,
        "latBottomRight": 1000,
        "longBottomRight": 1000
    }
}
```

To the server and expect a result that looks like this:

```
[
  {
    "id": 1,
    "latitude": -38.14571292,
    "longitude": 144.365187
  }
]
``` 
