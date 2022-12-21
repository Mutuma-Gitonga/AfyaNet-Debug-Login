class AddColumnsToPatients < ActiveRecord::Migration[7.0]
  def change
    add_column :patients, :auth_token, :string
    add_column :patients, :password_reset_token, :string
    add_column :patients, :password_reset_sent_at, :datetime
    add_column :patients, :remember_me, :boolean
    add_column :patients, :profile_picture, :string
  end
  
end
