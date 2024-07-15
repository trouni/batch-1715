class Room
  attr_reader :capacity, :patients
  attr_accessor :id

  def initialize(attributes = {})
    @id = attributes[:id].to_i
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def full?
    @patients.size >= @capacity
  end

  def add_patient(patient)
    raise StandardError, 'Room is full.' if full?

    patient.room = self # instance of the Room to which we are adding a patient
    # the `self` points to the instance on the left of the `.add_patient`
    @patients << patient
  end
end
