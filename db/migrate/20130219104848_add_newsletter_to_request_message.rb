class AddNewsletterToRequestMessage < ActiveRecord::Migration
  def change
    add_column :request_messages, :newsletter, :boolean
  end
end
