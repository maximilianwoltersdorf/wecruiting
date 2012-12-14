class RequestMessagesController < ApplicationController

	def create
		@request_message = RequestMessage.create(params[:request_message])
		StaffMailer.request_message(@request_message)
		flash[:success] = "Thank you. We have succesfully received your message."
		redirect_to root_path
	end

end
