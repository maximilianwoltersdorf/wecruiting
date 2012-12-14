ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "heroku.com",  
  :user_name            => "maximilian.woltersdorf@gmail.de",  
  :password             => "Sccscc07",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
} 

ActionMailer::Base.delivery_method = :smtp