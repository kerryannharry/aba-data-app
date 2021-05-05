class Client < ApplicationRecord
    has_many :targets
    has_many :behaviors
    has_many :appointments
    has_many :employees, through: :appointments
    has_one_attached :main_image

    validates :name, :age, :parent_name, :parent_address, :parent_phone_number, :insurance, presence:true

    has_secure_password

end
