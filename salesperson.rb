Dir["./lib/*.rb"].each {|file| require file }


phil = SalesPerson.new
phil.schedule_city(Place.build("Dallas, TX"))
phil.schedule_city(Place.build("El Paso, TX"))
phil.schedule_city(Place.build("Austin, TX"))
phil.schedule_city(Place.build("Lubbock, TX"))

puts phil.route
