OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '190497201438224','5b9f9db3ac9dceef57ae9fb950376bca'
end