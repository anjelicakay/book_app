json.id author.id
json.first_name author.first_name
json.last_name author.last_name
json.biography author.biography

json.books.do
  json.array! author.books.each do |book|
    json.id book.id
    json.title book.title
    json.author_id book.author_id
    json.summary book.summary
    json.genre book.genre
  end
end