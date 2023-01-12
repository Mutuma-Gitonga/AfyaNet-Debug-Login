class PatientSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :date_of_birth, :email, :phone_number, :location, :profile_picture, :auth_token, :password_reset_token, :password_reset_sent_at, :remember_me, :age

    has_many :messages
    has_many :appointments
    has_many :medical_records

    # calculate the age of the patient
    def age
        now = Time.now.utc.to_date
        now.year - object.date_of_birth.year - (object.date_of_birth.to_date.change(:year => now.year) > now ? 1 : 0)
    end


end