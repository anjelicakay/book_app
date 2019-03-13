json.id book.id
json.title book.title
json.author_id book.author_id
json.summary book.summary
json.genre book.genre

json.author do
  if book.author
    json.partial! book.author, partial: 'api/authors/author', as: :author
  end
end

json.reviews do 
  json.array! book.reviews.each do |review|
    json.id review.id
    json.user_id review.user_id
    json.book_id review.book_id
    json.rating review.rating
    json.content review.content
  end
end

json.inventories do 
  json.array! book.inventories.each do |inventory|
    json.id inventory.id
    json.user_id inventory.user_id
    json.book_id inventory.book_id
    json.status inventory.status
  end 
end

json.book_clubs do
  json.array! book.book_clubs.each do |book_club| 
    json.id book_club.id
    json.name book_club.name
    json.book_id book_club.book_id
  end
end