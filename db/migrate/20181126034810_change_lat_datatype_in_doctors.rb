class ChangeLatDatatypeInDoctors < ActiveRecord::Migration[5.2]
  def change
    change_column :doctors, :lat, :decimal, {precision: 10, scale: 6}
  end
end
