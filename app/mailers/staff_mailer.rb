class StaffMailer < ActionMailer::Base
  #default from: "from@example.com"

  def request_message(request_message)
  	@request_message = request_message
  	mail(:to => "m.woltersdorf@hotmail.de", :subject => "New request message from #{request_message.name}")
  end

end
