class StaffMailer < ActionMailer::Base
  default from: "info@wecruiting.de"

  def request_message(request_message)
  	@request_message = request_message
  	mail(:to => "info@wecruiting.de", :subject => "New request message from #{request_message.name}")
  end

end
