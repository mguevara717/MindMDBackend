class User < ApplicationRecord
  has_secured_password
  validates :username, uniqueness: {case_sensitive: false}

  has_many :posts
  has_many :reviews





end
