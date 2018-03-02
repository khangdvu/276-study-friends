require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Posts not empty" do
    post = Post.new
    assert_not post.save, 'Empty post saved'
  end

  test "Post user = current user" do
    post = Post.new(course: 'a', content: 'b')
    assert_equal (post.user == current_user.email)
  end
end
