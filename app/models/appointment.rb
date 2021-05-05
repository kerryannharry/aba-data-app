class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :employee
    has_one :note

    validates :start_time, :duration, :client_id, :employee_id, presence:true
end
