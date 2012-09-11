class Patient < ActiveRecord::Base
  attr_accessible  :firstname ,:lastname ,:age ,:gender ,:origin ,:address ,:tribe ,:occupation ,:religion ,:phone ,:nextofkin ,:family_history ,:past_medical_record
  has_one :user
  has_many :alergys
  has_many :socials
  has_many :surgicals
  has_many :medications
end
