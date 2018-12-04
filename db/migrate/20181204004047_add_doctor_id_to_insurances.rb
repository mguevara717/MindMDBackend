class AddDoctorIdToInsurances < ActiveRecord::Migration[5.2]
  def change
    add_column :insurances, :doctor_id, :integer
  end
end
