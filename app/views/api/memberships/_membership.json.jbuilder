json.id membership.id
json.user_id membership.user_id
json.book_club_id membership.book_club_id

json.book_club do
  if membership.book_club
    json.partial! membership.book_club, partial: 'api/book_clubs/book_club', as: :book_club
  end
end