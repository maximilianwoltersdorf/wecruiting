class PublicController < ApplicationController
	layout 'public'

def index
  @request_message = RequestMessage.new unless @request_message
end


end
