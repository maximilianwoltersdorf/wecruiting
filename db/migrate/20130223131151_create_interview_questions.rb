class CreateInterviewQuestions < ActiveRecord::Migration
  def change
    create_table :interview_questions do |t|
      t.text :question_text
      t.integer :display_count
      
      t.timestamps
    end
  end
end
