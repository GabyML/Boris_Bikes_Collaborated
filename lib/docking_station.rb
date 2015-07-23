require_relative './bike'

class DockingStation

	def release_bike
		fail "No bikes - disaster!" unless @bike
		@bike
	end

	def dock (bike)
		@bike = bike
	end
end