class ChangeColumnTypeFromJobPostings < ActiveRecord::Migration
  def up
  	change_column :job_postings, :description, :text
  end

  def down
  	change_column :job_postings, :description, :text
  end
end
