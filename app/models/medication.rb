class Medication < ActiveRecord::Base
  attr_accessible :condition, :doctor, :dossage, :drug, :duration, :patient_id
end
