class User < ActiveRecord::Base
  attr_accessor :password
  
#validating inputs from signup page
  validates :name, :presence => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true
  validates :password, :confirmation => true 		#password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create

  before_save :encrypt_password


#For validation purposes later
  def has_password?(submitted_password)
  	encrypted_password == encrypt(submitted_password)
  end

  def self.authenticate(name, submitted_password)
  	user=find_by_email(email)

  	return nil if user.nil?
  	return user if user.has_password?(submitted_password)
  end
#End of validation purposes


  private
  def encrypt_password
    encrypted_password  = Digest::SHA2.hexdigest ("#{password}")
end

end