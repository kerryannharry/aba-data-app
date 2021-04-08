class Employee < ApplicationRecord
    has_many :notes
    has_many :appointments
    has_many :clients, through::appointments

    has_secure_password
end
