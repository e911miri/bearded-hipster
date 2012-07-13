class Patient < ActiveRecord::Base
  attr_accessible :genotype, :name, :status
end
