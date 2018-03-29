class PostsController < ApplicationController

	before_action :logged_in_user, only: [:index, :new, :create]
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
  	if @post.save #saves posts
  	  redirect_to action: 'index'
    else
      redirect_to action: 'new'
      flash[:notice] = "Missing fields. Please try again"
    end
  end
def destroy
  @post = Post.find(params[:id])
  @post.destroy

  redirect_to posts_path
end
  private def post_params
  	params.require(:post).permit(:course, :content).merge(user: current_user.email)
  end
	
	def logged_in_user
	unless logged_in?
		store_location
		flash[:danger] = "Please log in."
		redirect_to login_url
	end
  end

end
