class AddColumnsInTargets < ActiveRecord::Migration[6.1]
  def change
    add_column :targets, :verbal_prompt, :boolean
    add_column :targets, :partial_verbal_prompt, :boolean
    add_column :targets, :full_physical_prompt, :boolean
    add_column :targets, :partial_physical_prompt, :boolean
    add_column :targets, :gesture_prompt, :boolean
    add_column :targets, :visual_prompt, :boolean
    add_column :targets, :modeling_prompt, :boolean
  end
end
