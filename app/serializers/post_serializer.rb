class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :body, :img_url
  belongs_to :user


end
