class InterviewQuestion < ActiveRecord::Base
  attr_accessible :question_text
  
  has_many :interview_answers
end
