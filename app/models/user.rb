class User < ActiveRecord::Base
	has_secure_password
#validating inputs from signup page
  
  validates :name, :presence => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true


  has_many :conversations, :foreign_key => :sender_id

end
