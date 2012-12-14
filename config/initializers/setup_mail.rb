ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "heroku.com",  
  :user_name            => "maximilian.woltersdorf",  
  :password             => "Sccscc07",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
} 