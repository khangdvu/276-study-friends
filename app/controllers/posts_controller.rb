class PostsController < ApplicationController

  #displays posts based on filter; display all if no filter
	def index
    if params[:course].present?
      @posts = Post.where("course = ?", params[:course]).order(created_at: :desc)
    else
      @posts = Post.order(created_at: :desc)
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
  	#@post.user = current_user.email
  	#render plain: params[:post].inspect
  	#render plain: post_params.inspect   #inspection
  	@post.save #saves posts
  	redirect_to action: 'index'
  end

  private def post_params
  	params.require(:post).permit(:course, :content).merge(user: current_user.email)
  end

end
