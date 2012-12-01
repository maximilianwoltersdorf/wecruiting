class CreateRequestMessages < ActiveRecord::Migration
  def change
    create_table :request_messages do |t|
    	t.string :name
    	t.string :email
    	t.text :message
    	
      t.timestamps
    end
  end
end
