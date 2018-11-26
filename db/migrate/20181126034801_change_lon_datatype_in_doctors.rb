class ChangeLonDatatypeInDoctors < ActiveRecord::Migration[5.2]
  def change
    change_column :doctors, :lon, :decimal, {precision: 10, scale: 6}

  end
end
