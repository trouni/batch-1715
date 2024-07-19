class Doctor < ActiveRecord::Base
  has_many :interns # This means that the interns table has a `doctor_id` foreign key
  ## Creates for example this method:
  # def interns
  #   Intern.where(doctor_id: id)
  # end
  has_many :consultations
  has_many :patients, through: :consultations
  ## Creates for example this method:
  # def patients
  #   Patient.joins(:consultations).where('consultations.doctor_id = ?', id)
  # end

  validates :last_name, presence: true
end
