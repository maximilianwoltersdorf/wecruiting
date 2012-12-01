class CreateJobAnswers < ActiveRecord::Migration
  def change
    create_table :job_answers do |t|
    	t.integer :job_posting_id
    	t.integer :consumer_id
    	t.string :name
    	t.text :profile

      t.timestamps
    end
  end
end
