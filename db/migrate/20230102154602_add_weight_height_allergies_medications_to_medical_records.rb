class AddWeightHeightAllergiesMedicationsToMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :medical_records, :weight, :string
    add_column :medical_records, :height, :string
    add_column :medical_records, :allergies, :string
    add_column :medical_records, :medications, :string
  end
end
