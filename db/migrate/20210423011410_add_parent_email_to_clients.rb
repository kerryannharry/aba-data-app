class AddParentEmailToClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :parent_email, :string
  end
end
