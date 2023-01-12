class DoctorSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :phone_number, :licence_no, :location, :specialty, :contract_length, :days_available_weekly, :specific_days_times_available, :engaged, :remember_me, :profile_picture, :specialty_id

  has_many :appointments
  has_many :messages
  belongs_to :specialty


end
