class InterviewAnswer < ActiveRecord::Base
  attr_accessible :interview_question_id, :user_answer, :user_email, :newsletter, :user_name, :user_token
  belongs_to :interview_questions
  
  #scopes
  scope :user_answered,     lambda {|user_token| where( :user_token => user_token) }
  
  
  def self.generate_token
    random_token = 0
    loop do
      random_token = SecureRandom.urlsafe_base64
      break unless InterviewAnswer.where(user_token: random_token).exists?
    end
    random_token
  end
  
end
