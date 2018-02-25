require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Posts not empty" do
    post = Post.new
    assert_not post.save
end
