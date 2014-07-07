json.array!(@media) do |medium|
  json.extract! medium, :id, :name, :uid, :user_id
  json.url medium_url(medium, format: :json)
end
