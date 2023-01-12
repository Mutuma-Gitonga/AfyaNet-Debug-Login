class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :time, :patient_id, :doctor_id, :description, :mode, :diagnosis, :treatment, :appointment_done, :patient, :doctor

  belongs_to :patient
  belongs_to :doctor



end

