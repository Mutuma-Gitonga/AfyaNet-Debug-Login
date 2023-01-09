class ChangeDaysAvailableWeeklyDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :doctors, :days_available_weekly, :string
  end
end
