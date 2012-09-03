class Patient < ActiveRecord::Base
  attr_accessible  :firstname ,:lastname ,:age ,:gender ,:origin ,:address ,:tribe ,:occupation ,:religion ,:phone ,:nextofkin ,:family_history ,:past_medical_record
  # has_many :patientrecord
end
