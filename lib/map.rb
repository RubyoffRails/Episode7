require 'geocoder'
class Map

  def self.search(terms)
    Array(Geocoder.search(terms)).first
  end

  def self.distance_between(first, second)
    Geocoder::Calculations.distance_between(first, second)
  end
end
