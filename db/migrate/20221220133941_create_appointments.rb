class Appointment < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.boolean :appointment_done
      t.belongs_to :patient, null: false, foreign_key: true
      t.belongs_to :doctor, null: false, foreign_key: true
    
      t.timestamps
      
    end     
  end
end
