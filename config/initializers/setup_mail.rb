ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>   'smpt.sendgrid.net',
  :port                 =>   '587',
  :authentication       =>   :plain,
  :user_name            =>   'app42622258@heroku.com',
  :password             =>   'bk2jcp0b3313',
  :domain               =>   'heroku.com',
  :enable_starttls_auto  => true
 }