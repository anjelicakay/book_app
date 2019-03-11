class BookClub < ApplicationRecord
  belongs_to :book
  has_many :memberships
  has_many :users, through: :memberships
  has_many :messages
end
