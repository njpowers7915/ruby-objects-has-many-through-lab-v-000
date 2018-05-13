class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
    
<<<<<<< HEAD
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
=======
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
>>>>>>> b2a672bde46e178244dfbf7b45b8b0c1bdb3be50
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
  
  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end
  
  def self.all
    @@all
  end
end