json.id book_club.id
json.name book_club.name
json.book_id book_club.book_id

json.memberships.do 
  json.array! book_club.memberships.each do |membership|
    json.id membership.id
    json.user_id membership.user_id
    json.book_club_id membership.book_club_id
  end
end

json.messages.do
  json.array! book_club.messages.each do |message|
    json.id message.id
    json.user_id message.user_id
    json.book_club_id message.book_club_id
    json.content message.content
  end
end