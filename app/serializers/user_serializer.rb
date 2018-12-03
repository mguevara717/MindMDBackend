class UserSerializer < ActiveModel::Serializer
  attributes :name, :email, :profile_img
  has_many :posts



end
