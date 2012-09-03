class Surgical < ActiveRecord::Base
  attr_accessible :condition, :patient_id, :procedure, :surgeon
end
