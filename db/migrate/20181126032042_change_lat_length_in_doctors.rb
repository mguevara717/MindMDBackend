class ChangeLatLengthInDoctors < ActiveRecord::Migration[5.2]
  def change
    change_column :doctors, :lat, :integer, :length => 20
  end
end
