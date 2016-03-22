json.array! @articles do |article|
  json.title article.title
  json.description article.description
  json.thumbnail article.thumbnail
  json.published_date article.published_date
  json.content article.content
  json.author article.author
end
