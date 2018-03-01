class User < ActiveRecord::Base
  attr_accessor :password
  
#validating inputs from signup page
  validates :name, :presence => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true
  validates :password, presence: true, length: {minimum: 6}	
    has_secure_password :validations => false

end
