json.array! @users do |user|
  json.id user.id
  json.names user.names
  json.last_names user.last_names
  json.email user.email
  json.ocupation user.ocupation
  json.address user.address
  json.state user.state.name
  json.city user.city.name
  json.birth_year user.birth_year
end