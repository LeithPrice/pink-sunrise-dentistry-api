# config/initializers/smtp.rb
ActionMailer::Base.smtp_settings = {
    address: 'smtp.sendgrid.net',
    port: 587,
    domain: 'https://pink-sunrise-dentistry-api-production-3da9.up.railway.app/',
    user_name: ENV['SENDGRID_USERNAME'],
    password: ENV['SENDGRID_PASSWORD'],
    authentication: :login,
    enable_starttls_auto: true
  }
  #if you are using the API key
  ActionMailer::Base.smtp_settings = {
    domain: 'https://pink-sunrise-dentistry-api-production-3da9.up.railway.app/',
    address:        "smtp.sendgrid.net",
    port:            587,
    authentication: :plain,
    user_name:      'apikey',
    password:       ENV['SENDGRID_API_KEY']
  }