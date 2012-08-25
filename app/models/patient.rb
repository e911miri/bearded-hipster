class Patient < ActiveRecord::Base
  attr_accessible :genotype, :name, :status
  has_many :patientrecord
end
