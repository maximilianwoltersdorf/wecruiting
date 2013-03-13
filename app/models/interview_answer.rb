class InterviewAnswer < ActiveRecord::Base
  attr_accessible :interview_question_id, :user_answer, :user_email, :newsletter, :user_name, :user_token
  belongs_to :interview_questions
end
