class User < ActiveRecord::Base
	has_secure_password
#validating inputs from signup page
  
  validates :name, :presence => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true


  has_many :conversations, :foreign_key => :sender_id
def self.create_with_omniauth(auth)
  
  user = find_or_create_by(uid: auth['uid'], provider:  auth['provider'])
  user.email = auth['info']['email']
  user.password = auth['uid']
  user.name = auth['info']['name']
  if User.exists?(user)
    user
  else
    user.save!
    user
  end
end
end
