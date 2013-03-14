class InterviewQuestionsController < ApplicationController
  layout 'public'
  
  def index
    @interview_questions = InterviewQuestion.visible.order('RAND()').take(5)
  end
  
  def new
    @interview_question = InterviewQuestion.new
  end
end
