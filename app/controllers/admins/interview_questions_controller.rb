class Admins::InterviewQuestionsController < ApplicationController
  before_filter :authenticate_admin!
  layout 'admin'
  
  def index
    @interview_questions = InterviewQuestion.all
  end
  
  def new
    @interview_question = InterviewQuestion.new
  end
  
  def create
    InterviewQuestion.create(params[:interview_question])
    redirect_to admins_interview_questions_path
  end
  
end
