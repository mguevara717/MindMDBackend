class AddDoctorIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :doctor_id, :integer
  end
end
