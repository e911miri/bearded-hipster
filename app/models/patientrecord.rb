class Patientrecord < ActiveRecord::Base
  attr_accessible :patient_id
  validates :patient_id, presence: true
  belongs_to :patient
end
