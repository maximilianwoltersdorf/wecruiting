class AddCustomerIdToJobPostings < ActiveRecord::Migration
  def change
  	add_column :job_postings, :customer_id, :integer
  end
end
