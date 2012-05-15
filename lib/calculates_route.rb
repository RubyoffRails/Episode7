class CalculatesRoute

	def self.calculate(points)

		remaining_points = points
		route = []
		route << remaining_points.take(1)
		remaining_points.each do 
			next_point = shortest_distance(route.last, remaining_points)
			route << remaining_points.take(1)
		end

		puts "starting_point = #{starting_point}"
		puts "remaining = #{remaining_points}"
	end

	def self.shortest_distance(from, possible)
		puts possible.inspect
		possible.sort_by{|a, b| Map.distance_between(from, a) <=> Map.distance_between(from, b)}.first
	end
end

