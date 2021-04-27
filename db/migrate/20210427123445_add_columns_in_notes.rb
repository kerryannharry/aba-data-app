class AddColumnsInNotes < ActiveRecord::Migration[6.1]
  def change
    add_column :notes, :duration, :time
    add_column :notes, :note_explanation, :text
    add_column :notes, :session_date, :date
  end
end
