json.id book.id
json.title book.title
json.author_id book.author_id
json.summary book.summary
json.genre book.genre
json.image_url book.image_url
json.page_count book.page_count

json.author do
  if book.author
    json.partial! book.author, partial: 'api/authors/author', as: :author
  end
end

# json.users do
#   json.array! book.users.each do |user|
#     json.id user.id
#     json.first_name user.first_name
#     json.last_name user.last_name
#     json.email user.email
#   end
# end

json.reviews do 
  json.array! book.reviews, partial: 'api/reviews/review', as: :review
end

# json.reviews do 
#   json.array! book.reviews.each do |review|
#     json.id review.id
#     json.user_id review.user_id
#     json.book_id review.book_id
#     json.rating review.rating
#     json.content review.content
#   end
# end

# json.inventories do 
#   json.array! book.inventories.each do |inventory|
#     json.id inventory.id
#     json.user_id inventory.user_id
#     json.status inventory.status
#   end 
# end

json.inventory do 
  your_inventory = book.inventories.find_by(user_id: current_user.id)
  json.id your_inventory.id
  json.user_id your_inventory.user_id
  json.book_id your_inventory.book_id
  json.status your_inventory.status
end

json.book_clubs do
  json.array! book.book_clubs.each do |book_club| 
    json.id book_club.id
    json.name book_club.name
    json.book_id book_club.book_id
  end
end