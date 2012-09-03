class Alergy < ActiveRecord::Base
  attr_accessible :description, :patient_id, :remedy, :substance
end
