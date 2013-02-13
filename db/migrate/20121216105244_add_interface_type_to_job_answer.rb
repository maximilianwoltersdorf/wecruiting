class AddInterfaceTypeToJobAnswer < ActiveRecord::Migration
  def change
    add_column :job_answers, :interface_type_cd, :integer
  end
end
