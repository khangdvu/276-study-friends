module SessionsHelper

	#Logs in the given user.
	def log_in(user)
		session[:user_id] = user.id
		current_user = user
	end
	def current_user=(user)
		@current_user = user
	end

	def current_user?(user)
		user == current_user
	end

	
	def current_user
		@current_user = @current_user || User.find_by(id: session[:user_id]) #current_user is the same if exist or get found by session id
	end

	def log_out
		session[:user_id] = nil
		current_user = nil
	end

	def logged_in?
		!current_user.nil?
	end

	def redirect_back_or(default)
		redirect_to(session[:forwarding_url] || default)
		session.delete(:forwarding_url)
	end

	def store_location
		session[:forwarding_url] = request.original_url if request.get?
	end
end
