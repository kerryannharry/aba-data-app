class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :role
      t.string :uid
      t.string :password

      t.timestamps
    end
  end
end
