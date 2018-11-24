class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :title
      t.string :img_url
      t.string :gender
      t.string :location_slug
      t.string :office_name
      t.boolean :accept_new_patients
      t.string :city
      t.integer :lat
      t.integer :lon
      t.string :state
      t.string :street
      t.string :street2
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
