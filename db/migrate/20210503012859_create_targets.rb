class CreateTargets < ActiveRecord::Migration[6.1]
  def change
    create_table :targets do |t|
      t.string :title
      t.text :descripition
      t.string :score_correct
      t.string :score_incorrect
      t.integer :trial
      t.text :protocols
      
      t.timestamps
    end
  end
end
