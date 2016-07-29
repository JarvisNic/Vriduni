json.array!(@users) do |user|
  json.extract! user, :id, :siglas, :email, :fingreso, :tipo
  json.url user_url(user, format: :json)
end
