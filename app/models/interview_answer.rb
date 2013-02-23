class InterviewAnswer < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :interview_questions
end
