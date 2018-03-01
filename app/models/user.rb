class User < ActiveRecord::Base
  attr_accessor :password
  
#validating inputs from signup page
  validates :name, :presence => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true 		
    has_secure_password :validations => false

end
