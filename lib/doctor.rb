class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
    
<<<<<<< HEAD
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
=======
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
>>>>>>> b2a672bde46e178244dfbf7b45b8b0c1bdb3be50
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
  
  def self.all
    @@all
  end
end