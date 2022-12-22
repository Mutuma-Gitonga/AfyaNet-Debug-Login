class AddColumnsToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :auth_token, :string
    add_column :doctors, :password_reset_token, :string
    add_column :doctors, :password_reset_sent_at, :datetime
    add_column :doctors, :remember_me, :boolean
    add_column :doctors, :profile_picture, :string
  end
end
