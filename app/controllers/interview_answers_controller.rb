class InterviewAnswersController < ApplicationController

	def index
  end

	def new
  end

	def create
    InterviewQuestion.find(params[:interview_answer][:interview_question_id]).interview_answers.create(params[:interview_answer].merge(:user_token => cookies[:user_token]))
    respond_to do |wants|
      wants.js
    end
  end

end
