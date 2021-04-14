class Client < ApplicationRecord
    has_many :appointments
    has_many :employees, through: :appointments

    has_secure_password

end
