class ChangeLonLengthInDoctors < ActiveRecord::Migration[5.2]
  def change
    change_column :doctors, :lon, :integer, :length => 20
  end
end
