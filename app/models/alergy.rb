class Alergy < ActiveRecord::Base
  attr_accessible :doctor, :irritant, :patient_id, :remedy, :symptoms
end
