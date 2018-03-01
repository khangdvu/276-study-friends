class UsersController < ApplicationController
	skip_before_filter :require_login
before_action :logged_in_user, only: [:edit, :update]
  #before_action :correct_user, only: [:edit, :update]
  def new
  	@user=User.new
  end

  def create								        #if saved, create user, log user in and redirect to user page, else reload
   	@user=User.new(user_params)			
	if @user.save
      log_in @user
      flash[:notice] = "Log in successful!"
  		redirect_to @user
  	else
  		render action:"new"
  	end
  end

  def show
  	@user=	User.find(params[:id])
  end

  def edit
	  @user = User.find(params[:id])
  end
	
  def update
	  @user = User.find(params[:id])
	  if @user.update_attributes(user_params)
		  flash[:success] = "Profile updated"
		  redirect_to @user
	  else
		  render 'edit'
	  end
  end
  private
  def user_params
      params.require(:user).permit(:name, :email, :password, :availability)
    end
	def logged_in_user
	unless logged_in?
		store_location
		flash[:danger] = "Please log in."
		redirect_to login_url
	end
  end
  #def correct_user
#	@user = User.find(params[:id])
#	redirect_to(root_url) unless current_user?(@user)
 # end
end



