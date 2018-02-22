class UsersController < ApplicationController
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

  def create								        
	@user=User.edit(user_params)			
	if @user.save
  		redirect_to @user
  	else
  		render action:"edit"
  	end
  end

  private
  def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end



