class AddUserTokenToInterviewAnswers < ActiveRecord::Migration
  def change
    add_column :interview_answers, :user_token, :string
  end
end
