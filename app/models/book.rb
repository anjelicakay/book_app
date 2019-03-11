class Book < ApplicationRecord
  belongs_to :author
  has_many :reviews
  has_many :inventories
  has_many :users, through: :inventories
  has_many :book_clubs
end
