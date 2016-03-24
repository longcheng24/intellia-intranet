json.array! @users do |user|
  json.id user.id
  json.title user.title
  json.full_name user.first_name + " " + user.last_name
  json.department user.department
  json.phone user.phone
  json.photo user.photo
end
