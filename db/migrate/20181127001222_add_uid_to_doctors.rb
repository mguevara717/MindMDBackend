class AddUidToDoctors < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :uid, :string
  end
end
