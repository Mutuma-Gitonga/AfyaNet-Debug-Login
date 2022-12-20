class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.integer :phone
      t.integer :licence_no
      t.string :location
      t.string :specialty
      t.integer :contract_length
      t.integer :days_available_weekly
      t.string :specific_days_times_available
      t.boolean :engaged
      

      t.timestamps
    end
  end
end
