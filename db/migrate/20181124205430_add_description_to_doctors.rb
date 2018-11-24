class AddDescriptionToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :description, :string
  end
end
