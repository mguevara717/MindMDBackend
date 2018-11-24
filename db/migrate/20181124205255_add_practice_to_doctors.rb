class AddPracticeToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :practice, :string
  end
end
