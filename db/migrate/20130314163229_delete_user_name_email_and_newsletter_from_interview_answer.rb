class DeleteUserNameEmailAndNewsletterFromInterviewAnswer < ActiveRecord::Migration
  def change
    remove_column :interview_answers, :user_name
    remove_column :interview_answers, :user_email
    remove_column :interview_answers, :newsletter
  end
end
