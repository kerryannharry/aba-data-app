class Target < ApplicationRecord
    has_many :clients


    validates :name, :email, :role, : presence:true
end