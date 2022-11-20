# config/initializers/smtp.rb
ActionMailer::Base.smtp_settings = {
    address: 'smtp.sendgrid.net',
    port: 587,
    domain: 'https://pink-sunrise-dentistry-api-production-3da9.up.railway.app/',
    user_name: 'leith.price@gmail.com',
    password: 'WG9MD4rd@CvJXbd1',
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
    password:       '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'
  }