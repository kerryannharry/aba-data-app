class ModifyColumnsInClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :password_digest, :string
    change_column :clients, :parent_phone_number, :string
  end
end
