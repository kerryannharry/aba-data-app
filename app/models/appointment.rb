class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :employee
    has_one :note
end
