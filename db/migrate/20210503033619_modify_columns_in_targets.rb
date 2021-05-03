class ModifyColumnsInTargets < ActiveRecord::Migration[6.1]
  def change
    change_column :targets, :score_correct, :boolean
    change_column :targets, :score_incorrect, :boolean
  end
end
