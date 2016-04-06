json.array! @articles do |article|
  json.id article.id
  json.title article.title
  json.description article.description
  json.thumbnail article.thumbnail
  json.published_date article.published_date
  json.content article.content
  json.author article.author
  json.link article.link
end
