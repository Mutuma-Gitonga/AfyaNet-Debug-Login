class ChangeContractLengthDataType < ActiveRecord::Migration[7.0]
  def change
    change_column(:doctors, :contract_length, :integer, using: 'contract_length::integer')
  end
end
