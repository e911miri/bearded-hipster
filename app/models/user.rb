class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :username, :isadmin, :type, :admin, :doctor
  has_many :microposts
  has_many :messages, :dependent => :destroy
  # attr_accessible :title, :body
  
  def get_type
    a = associations.find_by_user_id(self.id)
    if a
      if type == "patient" and type_id
        return {:type => "patient", :value => Patient.find("id=", type_id)}
      elsif type == "doctor" and type_id
        return {:type => "doctor", :value => Doctor.find("id=", type_id)}
      else
        return {:error => "No user Type found"}
      end
    else        
      return {:error => "No user Type found"}
    end
  end
end
