class Target < ApplicationRecord
    has_many :clients


    validates :title, :descripition, :client_id, presence:true
end