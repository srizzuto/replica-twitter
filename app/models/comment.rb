class Comment < ApplicationRecord
  belongs_to :post
  has_many :likes

  

  validates :content, presence: true
end
