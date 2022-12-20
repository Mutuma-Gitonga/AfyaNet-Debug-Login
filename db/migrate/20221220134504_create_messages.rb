class Message < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.string :message_body
      t.belongs_to :patient, null: false, foreign_key: true
      t.belongs_to :doctor, null: false, foreign_key: true
    
      t.timestamps
      
    end  
  end
end
