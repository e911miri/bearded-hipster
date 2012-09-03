class Doctor < ActiveRecord::Base
  attr_accessible :address, :email, :gender, :name, :specialty
end
