class InterviewAnswersController < ApplicationController

	def index
  end

	def new
  end

	def create
    puts params[:interview_answer]
    interview_answer = params[:interview_answer]
    
    unless interview_answer[:user_email]
      InterviewAnswer.create(
        :user_name              => interview_answer[:user_name],
        :interview_question_id  => interview_answer[:interview_question_id],
        :user_answer            => interview_answer[:user_answer]
      )
    else
      InterviewAnswer.create(
        :user_name              => interview_answer[:user_name],
        :user_email             => interview_answer[:user_email],
        :newsletter             => interview_answer[:newsletter]
      )
    end

    respond_to do |wants|
      wants.js
    end
  end

end
