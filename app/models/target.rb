class Target < ApplicationRecord
    has_many :clients


    validates :title, :descripition, :role, :client_id, presence:true
end