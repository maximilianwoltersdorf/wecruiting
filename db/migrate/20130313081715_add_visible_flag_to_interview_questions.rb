class AddVisibleFlagToInterviewQuestions < ActiveRecord::Migration
  def change
    add_column :interview_questions, :visible, :boolean, default: true
  end
end
