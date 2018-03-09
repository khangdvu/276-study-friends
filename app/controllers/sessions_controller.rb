class SessionsController < ApplicationController
  skip_before_filter :require_login
 
  layout false

  def new
  end




  def create
  	user = User.find_by(email: params[:session][:email])

  	if user && user.authenticate(params[:session][:password])
      log_in user          #if successful authenticate, sign in
      flash.now[:notice] = "Log in successful!"     
      redirect_to posts_path        #if failed to authenticate, reload
     
    else	
    	flash.now[:notice] = "Please try again."        
      render :new
	end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
