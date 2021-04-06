class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.string :parent_name
      t.string :parent_address
      t.integer :parent_phone_number
      t.boolean :insurance

      t.timestamps
    end
  end
end
