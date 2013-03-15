class AddUserTokenToRequestMessages < ActiveRecord::Migration
  
  def change
    add_column :request_messages, :user_token, :string
  end
end
