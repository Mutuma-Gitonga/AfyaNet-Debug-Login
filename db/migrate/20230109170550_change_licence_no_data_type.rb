class ChangeLicenceNoDataType < ActiveRecord::Migration[7.0]
  def change
    change_column(:doctors, :licence_no, :integer, using: 'licence_no::integer')
  end
end
