require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: 'Chris', email: 'test@test.ca')
  end
  test "user saved without email" do
    @user.email = nil
    refute @user.valid?, 'saved user without email'
    assert_not_nil @users.errors[:email], 'no validation error for no email present'
  end
  
  # test "the truth" do
  #   assert true
  # end
end
