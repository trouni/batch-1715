require_relative 'app/models/patient'
require_relative 'app/models/room'
require_relative 'app/repositories/patient_repository'

doug = Patient.new(name: 'Doug')
trouni = Patient.new(
  name: 'Trouni',
  cured: true
)
# unknown = Patient.new

# room = Room.new(capacity: 2)
# room.add_patient(doug)
# room.add_patient(trouni)
# pp room

patient_repo = PatientRepository.new('./data/patients.csv')

# With a room repository implemented:
# room_repo = RoomRepository.new('./data/rooms.csv')
# patient_repo = PatientRepository.new('./data/patients.csv', room_repo)

patient_repo.save(doug)
patient_repo.save(trouni)

pp patient_repo