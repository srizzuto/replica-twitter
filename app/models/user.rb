class User < ApplicationRecord
  has_many :posts

  validates :username, uniqueness: true, presence: true
  validates :city, presence: true
end
