class Employee < ApplicationRecord
    has_many :notes
    has_many :appointments
    has_many :clients, through: :appointments
    has_one_attached :main_image

    validates :name, :role, :bacbid, presence:true
    # validates :email, presence: true, uniqueness: true, format: {with: /(?<username>[^@\s]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[a-z]{2,}))/i, message: "must be a validate email address" }
 

   

    has_secure_password
    # validates :password, length: {in: 8..50}, confirmation: true, on: :create

    def self.from_omniauth(response)
        Employee.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
            u.email = response[:info][:email]
            u.password = SecureRandom.hex(15)
        end
    end

end
