class AddInterfaceIdToJobAnswers < ActiveRecord::Migration
  def change
    add_column :job_answers, :interface_id, :integer
  end
end
