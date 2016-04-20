# In config/initializers/mail.rb

ActionMailer::Base.raise_delivery_errors = true

ActionMailer::Base.smtp_settings = {
  :user_name => Rails.application.secrets.gmail_username,
  :password => Rails.application.secrets.gmail_password,
  :domain => 'heroku.com',
  :address => 'smtp.gmail.com',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"
