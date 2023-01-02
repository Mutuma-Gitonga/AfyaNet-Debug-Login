class RemoveHistoryTreatmentAndCostFromMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    remove_column :medical_records, :history, :string
    remove_column :medical_records, :treatment, :string
    remove_column :medical_records, :cost, :integer
  end
end
