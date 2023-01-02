class RemoveDiagnosisFromMedicalRecordsAddToAppointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :medical_records, :diagnosis, :string
    add_column :appointments, :diagnosis, :text
  end
end
