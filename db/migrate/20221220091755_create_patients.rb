class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.stri:first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :email
      t.string :password_digest
      t.integer :phone
      t.string :ng location

      t.timestamps
    end
  end
end
