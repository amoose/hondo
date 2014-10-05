json.array!(@buffaloes) do |buffalo|
  json.extract! buffalo, :id, :uid, :token, :label, :last_ip, :user_id, :location
  json.url buffalo_url(buffalo, format: :json)
end
