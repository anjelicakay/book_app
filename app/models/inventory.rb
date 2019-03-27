class Inventory < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :book_id, uniqueness: {scope: :user_id, message: "should only add a book once."}

  enum status: {currently_reading: 0, want_to_read: 1, read: 2}
end
