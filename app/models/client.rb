class Client < ApplicationRecord
    has_many :appointments
    has_many :empolyees, through::appointments
    
end
