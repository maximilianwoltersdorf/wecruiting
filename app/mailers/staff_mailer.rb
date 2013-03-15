class StaffMailer < ActionMailer::Base
  default from: '"Wecruiting Info" <info@wecruiting.de>'
  

  def notify_team(request_message)
  	@request_message = request_message
  	mail(:to => "team@wecruiting.de", :subject => "New request message")
  end
  
  def confirm_request(request_message)
    @request_message = request_message
  	mail(:to => request_message.email, :subject => "Kontaktanfrage wecruiting")
  end

end
