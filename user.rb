class User < ActiveRecord::Base
  attr_accessor :password
  
#validating inputs from signup page
  validates :name, :presence => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true 		
  validates_length_of :password, :in => 6..20, :on => :create

  before_save :encrypt_password
  
  has_many :conversations, :foreign_key => :sender_id


#For validation purposes
  def has_password?(submitted_password)
  	self.encrypted_password == Digest::SHA2.hexdigest(submitted_password)
  end

  def self.authenticate(email, submitted_password)
  	user=find_by_email(email)

  	return nil if user.nil?
  	return user if user.has_password?(submitted_password)
  end
#End of validation purposes


  private
  def encrypt_password
    self.encrypted_password  = Digest::SHA2.hexdigest ("#{password}")
end

end
