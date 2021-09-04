require "open-uri"
require "json"
	require "net/http"

uri = URI("http://express.heartrails.com/api/json")
uri.query = URI.encode_www_form({
	method: "getStations",
	x: 139,
	y: 35
})
res = Net:HTTP.get_response(uri)
json = JSON.parse(res.body)

print(json)