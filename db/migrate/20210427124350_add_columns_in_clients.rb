class AddColumnsInClients < ActiveRecord::Migration[6.1]
  def change
    add_column :clients, :client_picture, :binary
    add_column :clients, :client_dob, :date
  end
end
