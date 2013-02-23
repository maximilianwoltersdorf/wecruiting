class CreateInterviewAnswers < ActiveRecord::Migration
  def change
    create_table :interview_answers do |t|
      t.integer :question_id
      t.text :user_answer
      t.string :user_name
      t.string :user_email
      t.boolean :newsletter
      
      t.timestamps
    end
  end
end
