class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :mood, :email, :password_digest

  has_many :posts
  has_many :reviews


end
