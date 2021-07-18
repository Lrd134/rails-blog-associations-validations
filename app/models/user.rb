class User < ApplicationRecord
  has_many :posts
  has_many :tags, through: :posts
  validates :name, presence: true, uniqueness: true, length: { minimum: 1 }


end
