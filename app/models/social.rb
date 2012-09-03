class Social < ActiveRecord::Base
  attr_accessible :condition, :doctor, :patient_id, :reason, :treatment
end
