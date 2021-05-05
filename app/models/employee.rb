class Employee < ApplicationRecord
    has_many :notes
    has_many :appointments
    has_many :clients, through: :appointments
    has_one_attached :main_image

    validates :name, :email, :role, : presence:true
 

   

    has_secure_password
end
