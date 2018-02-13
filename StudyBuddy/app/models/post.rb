class Post < ActiveRecord::Base

  
  def self.search(course)
    if course
      where('name LIKE ?', "%#{course}%")
    else
      all
    end
  end
end
