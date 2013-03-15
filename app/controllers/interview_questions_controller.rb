class InterviewQuestionsController < ApplicationController
  layout 'public'
  before_filter "generate_public_user_token"
  
  def index
    answered_questions = InterviewAnswer.user_answered(cookies[:user_token]).map(&:interview_question_id)
    random = Rails.env == "development" ? "rand()" : "random()"
    @interview_questions = InterviewQuestion.visible.where("id NOT IN (?)", answered_questions.present? ? answered_questions : 0).order(random).take(5)
  end
  
  def new
    @interview_question = InterviewQuestion.new
  end
 

end
