class Surgical < ActiveRecord::Base
  attr_accessible :description, :patient_id, :report, :surgeon, :title
end
