class AddLastLoginToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :last_login, :string
  end
end
