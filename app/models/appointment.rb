class Appointment < ApplicationRecord
    belongs_to :client
    belongs_to :employee
    has_one :note

    validates :start_time, :duration, :client_id, :employee_id, presence:true

    scope :scheduled, -> { where staus: "Scheduled" }
    scope :draft, -> { where staus: "Draft" }
    # STATUS = {
    #     scheduled: "Scheduled",
    #     draft: "Draft"
    # }

end
