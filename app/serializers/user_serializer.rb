class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :posts
  has_many :reviews


end
