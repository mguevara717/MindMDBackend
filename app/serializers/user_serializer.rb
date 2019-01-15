class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :profile_img
  has_many :posts



end
