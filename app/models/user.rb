class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :follower_followings, class_name: "Following", foreign_key: "followee_id"
  has_many :followee_followings, class_name: "Following", foreign_key: "follower_id"

  has_many :followers, through: :follower_followings
  has_many :followees, through: :followee_followings

  has_many :reviews
  has_many :inventories
  has_many :books, through: :inventories
  has_many :memberships
  has_many :book_clubs, through: :memberships
  has_many :messages


  def read_books
    inventories.read.map {|inventory| inventory.book }
  end

  def current_books
    inventories.currently_reading.map {|inventory| inventory.book }
  end

  def to_read
    inventories.want_to_read.map {|inventory| inventory.book }
  end
end
