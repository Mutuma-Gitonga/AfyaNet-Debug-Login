class Doctor < ApplicationRecord
    has_many :messages
    has_many :appointments, through: :patients
    has_secure_password

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please enter a valid email address" }
    validates :licence_no, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 6..20 }, format: { with: /(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])/, message: "Password must contain at least one uppercase letter, one number, and one special character" }
    validates :password_confirmation, presence: true
    validates :speciality, presence: true
    validates :contract_length, presence: true
    validates :phone_number, presence: true, length: { is: 10 }, format: { with: /\A[0-9]+\z/ }
    validates :location, presence: true
    validates :days_available_weekly, presence: true
    validates :specific_days_times_available, presence: true
    validates :engaged, presence: true
    

    before_create { generate_token(:auth_token) }

    def generate_token(column)
        begin
            self[column] = SecureRandom.urlsafe_base64
        end while Doctor.exists?(column => self[column])
    end



end
