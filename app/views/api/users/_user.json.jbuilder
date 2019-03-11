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
