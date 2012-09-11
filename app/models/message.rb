class Message < ActiveRecord::Base
  attr_accessible :content, :from, :title, :to
end
