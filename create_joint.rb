require 'faraday'
require 'faker'
require 'active_support/all'

conn = Faraday.new(:url => 'http://localhost:3000/api/places')

10.times do

  location = ["Houston, TX", "Katy, TX", "Pearland, TX", "Woodlands, TX", "Sugar Land, TX", "Baytown, TX"].sample

  place_name = [Faker::Company.name, "Pizza"].join(" ")

  response = conn.post do |req|
    req.url '/api/places'
    req.headers['Content-Type'] = 'application/json'
    req.body = {
      pizza_joint: {
        name: place_name,
        city: location
      }
    }.deep_stringify_keys.to_json
  end

end
