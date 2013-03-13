class InterviewQuestion < ActiveRecord::Base
  attr_accessible :question_text, :visible
  
  has_many :interview_answers
  
  #scopes
  
  scope :visible, where(:visible => true)
  
end
