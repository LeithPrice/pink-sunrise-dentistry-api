class ApplicationMailer < ActionMailer::Base
  # this defaults where the mailer is sending from 
  default from: 'pinksunrisedentistry@gmail.com'
  layout 'mailer'
end
