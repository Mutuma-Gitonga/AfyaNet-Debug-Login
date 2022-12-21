class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.integer :doctor_id
      t.integer :patient_id

      t.timestamps
    end
  end
end
