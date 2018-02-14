class PostsController < ApplicationController

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
  	#@post.save #saves posts
  	redirect_to @post
  end

  private def post_params
  	params.require(:post).permit(:user, :course, :content)
  end
  
end
