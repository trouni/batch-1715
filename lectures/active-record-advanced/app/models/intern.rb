class Intern < ActiveRecord::Base
  belongs_to :doctor # This means that the interns table has a `doctor_id` foreign key
  # Creates for example this method:
  # def doctor
  #   Doctor.find(doctor_id)
  # end
end
