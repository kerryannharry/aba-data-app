class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :employee
    has_one :note

    validates :start_time, presence:true
end
