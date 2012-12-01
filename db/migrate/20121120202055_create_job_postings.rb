class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
    	t.string :title
    	t.string :description
    	t.string :requirements
    	
      t.timestamps
    end
  end
end
