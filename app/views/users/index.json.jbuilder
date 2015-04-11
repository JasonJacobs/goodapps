json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :profile_image
  json.url user_url(user, format: :json)
end
