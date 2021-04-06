class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.timestamp :start_time
      t.time :duration
      t.integer :client_id
      t.integer :employee_id

      t.timestamps
    end
  end
end
