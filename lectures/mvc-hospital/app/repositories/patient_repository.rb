require 'csv'

class PatientRepository
  def initialize(csv_file_path) #, room_repository)
    @csv_file_path = csv_file_path
    # @room_repository = room_repository
    @patients = [] # instances of Patient
    @last_id = 0

    load_csv if File.exists?(@csv_file_path)
  end

  def find(id)
    @patients.find { |patient| patient.id == id.to_i }
  end

  def save(patient)
    patient.id = @last_id + 1
    add_patient_to_repo(patient)
    save_csv
  end

  private

  def add_patient_to_repo(patient)
    @patients << patient
    @last_id = patient.id # update the @last_id to match the id of the last patient added
  end

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row) do |row|
      patient = Patient.new(
        id: row['id'],
        name: row['name'],
        cured: row['cured'] == 'true',
        # room: @room_repository.find(row['room_id'].to_i) # we need an instance of Room
      )
      add_patient_to_repo(patient)
    end
  end

  def save_csv
    # TODO
  end
end