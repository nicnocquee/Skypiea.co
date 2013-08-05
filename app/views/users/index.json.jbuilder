json.array!(@users) do |user|
  json.extract! user, :username, :email, :artist
  json.url user_url(user, format: :json)
end
