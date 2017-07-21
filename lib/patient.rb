class Patient
	attr_accessor :name
	attr_reader :appointments

	def initialize(name)
		@name = name
		@appointments = []
	end

	def doctors
		@appointments.map do |appointment|
			appointment.doctor
		end
	end

	def add_appointment(appointment)
		@appointments << appointment
		appointment.patient = self 
	end
end
