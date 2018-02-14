class SessionsController < ApplicationController
  def new
  end




  def create
  	user = User.authenticate(params[:session][:email], params[:session][:password])

  	if user.nil? 					#if failed to authenticate, reload
  		render :new
    else	
    	sign_in user				#if successful authenticate, sign in
    	redirect_to user
	end
  end

  def destroy

  end
end
