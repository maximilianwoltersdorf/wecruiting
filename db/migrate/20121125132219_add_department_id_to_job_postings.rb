class AddDepartmentIdToJobPostings < ActiveRecord::Migration
  def change
  	add_column :job_postings, :department_id, :integer
  end
end
