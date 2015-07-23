require 'docking_station'

describe DockingStation do
	it{is_expected.to respond_to :release_bike}

	it "releases a working bike" do
		subject.dock Bike.new
		expect(subject.release_bike).to be_working
	end

	it "raises an error if there are no bikes available" do
		expect{subject.release_bike}.to raise_error("No bikes - disaster!")
	end

	it { is_expected.to respond_to(:dock).with(1).argument }

end