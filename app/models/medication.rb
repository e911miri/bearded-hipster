class Medication < ActiveRecord::Base
  attr_accessible :dossage, :drug, :duration, :patient_id, :pharmacist
end
