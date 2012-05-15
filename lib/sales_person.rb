class SalesPerson

	attr_reader :cities
	def initialize
		@cities = []
	end

	def schedule_city(city)
		@cities << city unless @cities.include?(city)
	end

	def route
		CalculatesRoute.calculate(cities)
	end
end
