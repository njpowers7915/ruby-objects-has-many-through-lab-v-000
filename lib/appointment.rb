class Appointment
<<<<<<< HEAD
  attr_accessor :patient, :doctor, :date
  @@all = []
  
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
=======
  attr_accessor :date, :patient, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
>>>>>>> b2a672bde46e178244dfbf7b45b8b0c1bdb3be50
    @@all << self
  end
  
  def self.all
    @@all
  end
end