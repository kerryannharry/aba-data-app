class AddColumnInEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :employee_picture, :binary
  end
end
