class CreateMedicalRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :medical_records do |t|

      t.timestamps
    end
  end
end
