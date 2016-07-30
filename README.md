This is a rails api for the smartpath project:

Add the header:
Content-Type: application/json

Request:

`http://localhost:3000/trees` to get a list of all the trees:

`[{"id":1,"latitude":-38.14571292,"longitude":144.365187}]`

`http://localhost:3000/trees/[id]` to get data on a single tree:

`{"id":1,"latitude":-38.14571292,"longitude":144.365187}`
