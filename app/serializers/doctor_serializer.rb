class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :middle_name, :last_name, :title,
  :img_url, :gender, :bio, :location_slug, :office_name, :accept_new_patients,
  :city, :lat, :lon, :state, :street, :street2, :zip, :phone

  has_many :insurances

end
