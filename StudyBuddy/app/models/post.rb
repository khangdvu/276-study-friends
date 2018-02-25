class Post < ActiveRecord::Base
	validates :course, :presence => true
end
