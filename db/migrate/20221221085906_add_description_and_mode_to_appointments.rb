class AddDescriptionAndModeToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :description, :string
    add_column :appointments, :mode, :string
  end
end
