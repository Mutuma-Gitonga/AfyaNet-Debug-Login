class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :location


      t.timestamps
    end
  end
end
