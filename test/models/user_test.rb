require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: 'Chris', email: 'test@test.ca', password: 'test34', password_confirmation: 'test34')
  end
  test "user saved without email" do
    @user.email = nil
    refute @user.valid?, 'saved user without email'
    assert_not_nil @users.errors[:email], 'no validation error for no email present'
  end
  
  test "user saved without password" do
    @uer.password = nil
    refute @user.valid?, 'saved user without password'
    assert_not_nil @users.errors[:password], 'no validation error for no password present'
  end
  
  # test "the truth" do
  #   assert true
  # end
end
