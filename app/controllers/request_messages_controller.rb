class RequestMessagesController < ApplicationController	
	
	def create
	  @request_message = RequestMessage.create(params[:request_message].merge(:user_token => cookies[:user_token]))
	  @request_message = RequestMessage.new if @request_message.id?
	  respond_to do |wants|
	    wants.js
	  end
	end
	


end
