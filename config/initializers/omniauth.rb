OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['190497201438224'], ENV['5b9f9db3ac9dceef57ae9fb950376bca']
end