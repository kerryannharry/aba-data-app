class AddBacbidToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :bacbid, :string
  end
end
