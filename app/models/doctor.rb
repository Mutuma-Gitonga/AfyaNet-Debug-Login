class Doctor < ApplicationRecord
    has_many :messages
    has_many :appointments, through: :patients

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :licence_no presence: true 
end
