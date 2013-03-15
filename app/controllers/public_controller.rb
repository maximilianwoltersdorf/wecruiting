class PublicController < ApplicationController
	layout 'public'
  before_filter "generate_public_user_token"

def index
  @request_message = RequestMessage.new unless @request_message
end

def interview
  @interview_questions = InterviewQuestion.order('RAND()').take(5)
end


end
