module SessionsHelper

	#Logs in the given user.
	def log_in(user)
		session[:user_id] = user.id
		current_user = user
	end
	def current_user=(user)
		@current_user = user
	end

	def current_user
		@current_user = @current_user || User.find_by(id: session[:user_id]) #current_user is the same if exist or get found by session id
	end

	def log_out
		session[:user_id] = nil
		self.current_user = nil
	end

	def logged_in?
		!current_user.nil?
	end

end
