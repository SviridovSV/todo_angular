Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.omniauth :facebook, ENV['APP_ID'], ENV['APP_SECRET']
  config.secret_key = 'b466f2eb0acf9f2e4881b78f234d2b419cbd8d6fa6ae852897aaff7b53f27a51c70158e5f9598e6b0614c145699fe1117a62bf8fd50821188343f9958f965dff'
end
