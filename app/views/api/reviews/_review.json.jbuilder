json.id review.id
json.user_id review.user_id
json.book_id review.book_id
json.rating review.rating
json.content review.content

json.user do
  json.partial! review.user, partial: 'api/users/user', as: :user
end
