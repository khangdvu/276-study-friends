class PostsController < ApplicationController
	def index
    if params[:course]
      @posts = Post.search(params[:course])
    else
      @posts = Post.all
    end
	end

  def new
    @posts = Post.new 
  end
end
