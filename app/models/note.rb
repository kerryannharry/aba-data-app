class Note < ApplicationRecord
    belongs_to :appointment
    belongs_to :employee


    validates :name, :email, :role, : presence:true
end
