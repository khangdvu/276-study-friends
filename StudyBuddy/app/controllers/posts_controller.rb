class PostsController < ApplicationController

  #displays posts based on filter; display all if no filter
	def index
    if params[:course]
      @posts = Post.where("course = ?", params[:course])
    else
      @posts = Post.all
    end
  end

	#def show
		#@post = Post.find(params[:id])
	#end

	def new
		@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	#render plain: params[:post].inspect   #inspection
  	@post.save #saves posts
  	redirect_to action: 'index'
  end

  private def post_params
  	params.require(:post).permit(:user, :course, :content)
  end

end
