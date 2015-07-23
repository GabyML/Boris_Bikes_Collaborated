require 'docking_station'

describe DockingStation do
	it{is_expected.to respond_to :release_bike}

	it "releases a working bike" do
		subject.dock Bike.new
    bike = subject.release_bike
		expect(bike).to be_working
	end

  describe "#release_bike" do
    it "raises an error if there are no bikes available" do
    expect{subject.release_bike}.to raise_error("No bikes - disaster!")
    end
  end

	it { is_expected.to respond_to(:dock).with(1).argument }

  describe '#dock' do
    it 'raises an error if station is full' do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error('Station is full!')
    end
  end
end
