class Patient < ApplicationRecord
    # has_secure_password
    has_many :messages
    has_many :appointments
    has_many :medical_records


    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true

end
