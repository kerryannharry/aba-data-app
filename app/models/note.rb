class Note < ApplicationRecord
    belongs_to :appointment
    belongs_to :employee


    validates :appointment_id, :employee_id, :duration, :note_explanation, :session_date, presence:true
end
