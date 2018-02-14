class SessionsController < ApplicationController
  def new
  end




  def create
  	user = User.authenticate(params[:session][:email], params[:session][:password])

  	if user.nil?           #if failed to authenticate, reload
     	flash.now[:notice] = "Please try again."				
  		render :new
    else	
    	log_in user	         #if successful authenticate, sign in
      flash.now[:notice] = "Log in successful!"			
    	redirect_to user
	end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
