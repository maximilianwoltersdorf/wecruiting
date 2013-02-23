class ChangeQuestionIdFromInternetAnswer < ActiveRecord::Migration
  def change  
    rename_column :interview_answers, :question_id, :interview_question_id
  end
end
