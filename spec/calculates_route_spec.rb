require_relative "../lib/calculates_route"
require_relative "../lib/place"

describe CalculatesRoute do
	let(:dallas) {Place.build("Dallas, TX") }
	let(:austin ) { Place.build("Austin, TX")}
	let(:lubbock ) { Place.build("Lubbock, TX")}
	let(:el_paso ) { Place.build("El Paso, TX")}

	it "should calculate the route" do
		points = [dallas, el_paso, austin, lubbock]
		expected = [dallas, austin, lubbock, el_paso]
		CalculatesRoute.calculate(points).should eq(expected)
	end
end
