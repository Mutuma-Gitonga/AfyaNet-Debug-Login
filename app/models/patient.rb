class Patient < ApplicationRecord
    has_secure_password
    has_many :messages
    has_many :appointments
    has_many :medical_records


    validates :first_name, presence: true, length: { in: 2..20 }, format: { with: /\A[a-zA-Z]+\z/, message: "First name must contain only letters" }
    validates :last_name, presence: true, length: { in: 2..20 }, format: { with: /\A[a-zA-Z]+\z/, message: "Last name must contain only letters" }
    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Please enter a valid email address" }
    validates :password, presence: true, length: { in: 6..20 }, format: { with: /(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])/, message: "Password must contain at least one uppercase letter, one number, and one special character" }
    validates :password_confirmation, presence: true
    validates :phone_number, presence: true, length: { is: 10 }, format: { with: /\A[0-9]+\z/ }
    validates :location, presence: true
    validates :date_of_birth, presence: true
    validate  :validate_age

    before_create { generate_token(:auth_token) }

    def generate_token(column)
        begin
            self[column] = SecureRandom.urlsafe_base64
        end while Patient.exists?(column => self[column])
    end

    private

    def validate_age
        if date_of_birth.present? && date_of_birth > 18.years.ago.to_date
            errors.add(:date_of_birth, "You must be at least 18 years old to register")
        end
    end


end
