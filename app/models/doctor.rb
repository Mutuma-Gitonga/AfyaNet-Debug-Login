class Doctor < ApplicationRecord
    has_many :messages
    has_many :appointments, through: :patients
    belongs_to :specialty, optional: true
    has_secure_password

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please enter a valid email address" }
    validates :password, presence: true, length: { in: 6..20, message: "Password must be between 6 to 20 characters" }, format: { with: /(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])/, message: "Password must contain at least one uppercase letter, one number, and one special character" }
    validates :password_confirmation, presence: true
    validates :phone_number, presence: true, length: { is: 10 }, format: { with: /\A[0-9]+\z/ },uniqueness: true
    validates :licence_no, uniqueness: true,allow_nil: true, allow_blank: true, length: { is: 5, message:"Licence Number must be 5 numbers" }, format: { with: /\A[0-9]+\z/, message: "Licence number must contain only numbers" }
    validates :contract_length, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 13, message: "Contract length must be between 1 to 12 months" }, allow_nil: true, allow_blank: true

    

    before_create { generate_token(:auth_token) }

    def generate_token(column)
        begin
            self[column] = SecureRandom.urlsafe_base64
        end while Doctor.exists?(column => self[column])
    end



end
