class CreateBehaviors < ActiveRecord::Migration[6.1]
  def change
    create_table :behaviors do |t|
      t.string :name
      t.integer :frequency
      t.time :duration
      t.integer :note_id
      t.integer :client_id

      t.timestamps
    end
  end
end
