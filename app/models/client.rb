class Client < ApplicationRecord
    has_many :targets
    has_many :behaviors
    has_many :appointments
    has_many :employees, through: :appointments
    has_one_attached :main_image

    validates :name, :age, :parent_name, :parent_address, :parent_phone_number, :insurance, :client_dob, presence:true
    validates :email, presence: true, uniqueness: true, format: {with: /(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))/i, message: "must be a validate email address" }

    has_secure_password
    validates :password, length: {in: 8..50}, confirmation: true, on: :create
end
