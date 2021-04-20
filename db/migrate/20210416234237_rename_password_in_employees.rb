class RenamePasswordInEmployees < ActiveRecord::Migration[6.1]
  def change
    rename_column :employees, :password, :password_digest
  end
end
