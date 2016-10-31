class User < ApplicationRecord
  has_many :posts
  validates :username, uniqueness: true
end
