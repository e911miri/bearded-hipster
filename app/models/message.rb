class Message < ActiveRecord::Base
  attr_accessible :content, :from, :title, :to
  belongs_to :user
end
