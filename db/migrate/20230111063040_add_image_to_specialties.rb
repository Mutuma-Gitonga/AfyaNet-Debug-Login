class AddImageToSpecialties < ActiveRecord::Migration[7.0]
  def change
    add_column :specialties, :image, :string
  end
end
