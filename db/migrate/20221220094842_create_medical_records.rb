class CreateMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_records do |t|
      t.string :blood_pressure
      t.integer :temperature
      t.string :history
      t.string :diagnosis
      t.string :treatment
      t.integer :cost
      t.belongs_to :patient, null: false, foreign_key: true


      t.timestamps
    end
  end
end
