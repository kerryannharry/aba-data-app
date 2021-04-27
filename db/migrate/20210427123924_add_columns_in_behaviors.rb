class AddColumnsInBehaviors < ActiveRecord::Migration[6.1]
  def change
    add_column :behaviors, :target_explanation, :text
    add_column :behaviors, :function_of_behavior, :string
  end
end
