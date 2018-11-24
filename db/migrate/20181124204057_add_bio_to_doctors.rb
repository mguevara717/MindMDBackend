class AddBioToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :bio, :string
  end
end
