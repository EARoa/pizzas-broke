class Place < ActiveRecord::Base
  geocoded_by :city, :latitute => :lat, :longitude => :lng
  after_validation :geocode
end
