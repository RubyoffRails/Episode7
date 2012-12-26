require_relative "./map"

class Place
  attr_accessor :name, :coordinates

  def self.build(name)
    results = Map.search(name)
    Place.new.tap do |p|
      p.name = name
      p.coordinates = results.coordinates
    end
  end

  def to_s
    name
  end

  def to_coordinates
    coordinates
  end
end
