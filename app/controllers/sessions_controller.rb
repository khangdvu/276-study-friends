class SessionsController < ApplicationController
  skip_before_filter :require_login
 
  layout false

  def new
    #if already logged in, go to posts page
    if current_user.present?
      redirect_to posts_path
    end
  end

def create
  if request.env['omniauth.auth']
    user = User.create_with_omniauth(request.env['omniauth.auth'])
    session[:user_id] = user.id    
    redirect_to posts_path
  else
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
end



  def destroy
    log_out
    redirect_to login_path
  end
end
