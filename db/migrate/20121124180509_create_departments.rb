class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
    	t.string :title
    	t.text :description
    	t.string :contact_person
			t.string :contact_email
			t.integer :customer_id

      t.timestamps
    end
  end
end
