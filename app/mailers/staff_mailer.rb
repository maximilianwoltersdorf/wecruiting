class StaffMailer < ActionMailer::Base
  default from: "info@wecruiting.de"

  def notify_team(request_message)
  	@request_message = request_message
  	mail(:to => "info@wecruiting.de", :subject => "New request message")
  end
  
  def confirm_request(request_message)
    @request_message = request_message
  	mail(:to => request_message.email, :subject => "Kontaktanfrage wecruiting")
  end

end
