class Client < ApplicationRecord
    has_many :targets
    has_many :behaviors
    has_many :appointments
    has_many :employees, through: :appointments

    has_secure_password

end
