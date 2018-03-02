require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "Users cannot be empty" do
    user = User.new
    assert_not user.save, 'Empty user saved'
  end

  test "Users cannot have same email" do
    user = User.new(name: 'Test', email: 'test1@test.com', password: '123456')
    user.save 
    user2 = User.new(name: 'Test2', email: 'test1@test.com', password: '123456')
    assert_not user2.save, 'User has same email'
  end
end
