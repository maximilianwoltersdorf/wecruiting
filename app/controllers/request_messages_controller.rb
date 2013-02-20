class RequestMessagesController < ApplicationController

	def create
	  @request_message = RequestMessage.create(params[:request_message])
	  respond_to do |wants|
	    wants.js
	  end
	  
#		if @request_message.id.present?
#		  StaffMailer.request_message(@request_message).deliver
#		  flash[:success] = "Thank you. We have succesfully received your message."
#		  redirect_to root_path
#		else 
#		  render "public/index", :layout => "public"
#		end
	end

end
