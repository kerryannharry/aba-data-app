class AddFunctionToBehavior < ActiveRecord::Migration[6.1]
  def change
    add_column :behaviors, :function, :string
  end
end
