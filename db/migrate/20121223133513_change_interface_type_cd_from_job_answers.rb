class ChangeInterfaceTypeCdFromJobAnswers < ActiveRecord::Migration
  def change
    rename_column :job_answers, :interface_type_cd, :interface_type
  end
end
