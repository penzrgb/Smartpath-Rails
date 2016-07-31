require 'georuby'

class Light < ApplicationRecord
  include GeoRuby::SimpleFeatures

  def self.InsideArea(latTopLeft, longTopLeft, latBottomRight, longBottomRight)
    boundingRect = [[latTopLeft, longTopLeft], [latTopLeft, longBottomRight], [latBottomRight, longBottomRight], [latBottomRight, longTopLeft]]

    outer_ring = LinearRing.from_coordinates(boundingRect)

    Light.all.select { |t| outer_ring.contains_point?(Point.from_x_y(t.latitude, t.longitude)) } 
  end

end
