class CreateXingInterfaces < ActiveRecord::Migration
  def change
    create_table :xing_interfaces do |t|
      t.string :profile_url
      t.integer :profile_id
      t.string :username
      
      
      t.timestamps
    end
  end
end
