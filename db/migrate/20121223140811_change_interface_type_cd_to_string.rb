class ChangeInterfaceTypeCdToString < ActiveRecord::Migration
  def change
    change_column :job_answers, :interface_type, :string
  end
end
