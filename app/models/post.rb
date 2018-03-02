class Post < ActiveRecord::Base
  #validate inputs
  validates :user, :presence => true
  validates :course, :presence => true
  validates :content, :presence => true

  #belongs_to :user
end
