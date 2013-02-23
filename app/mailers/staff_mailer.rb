class StaffMailer < ActionMailer::Base
  default from: "maximilian.woltersdorf@gmail.com"

  def request_message(request_message)
  	@request_message = request_message
  	mail(:to => "maximilian.woltersdorf@gmail.com", :subject => "New request message from #{request_message.name}")
  end

end
