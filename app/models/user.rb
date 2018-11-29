class User < ApplicationRecord
  has_secure_password

  validates :name, uniqueness: {case_sensitive: false}

  has_many :posts
  has_many :reviews





end
