class Behavior < ApplicationRecord
    belongs_to :note
    belongs_to :client
    validates :name, :frequency, :duration, :note_id, :client_id, presence:true
end
