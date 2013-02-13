class AddStatusToJobAnswers < ActiveRecord::Migration
  def change
    add_column :job_answers, :status, :string
  end
end
