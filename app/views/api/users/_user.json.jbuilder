json.id user.id
json.first_name user.first_name
json.last_name user.last_name
json.email user.email

json.followers do
  json.array! user.followers.each do |follower|
    json.id follower.id
    json.first_name follower.first_name
    json.last_name follower.last_name
  end  
end

json.followees do
  json.array! user.followees.each do |followee|
    json.id followee.id
    json.first_name followee.first_name
    json.last_name followee.last_name
  end  
end

json.reviews.do 
  json.array! user.reviews.each do |review|
    json.id review.id
    json.user_id review.user_id
    json.book_id review.book_id
    json.rating review.rating
    json.content review.content
  end
end

json.inventories.do 
  json.array! user.inventories.each do |inventory|
    json.id inventory.id
    json.user_id inventory.user_id
    json.book_id inventory.book_id
    json.status inventory.status
  end 
end

json.memberships.do 
  json.array! user.memberships.each do |membership|
    json.id membership.id
    json.user_id membership.user_id
    json.book_club_id membership.book_club_id
  end 
end

json.messages.do 
  json.array! user.messages.each do |message| 
    json.id message.id
    json.user_id message.user_id
    json.book_club_id message.book_club_id
    json.content message.content
  end
end
