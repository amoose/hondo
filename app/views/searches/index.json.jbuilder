json.array!(@searches) do |search|
  json.extract! search, :id, :terms, :options, :result
  json.url search_url(search, format: :json)
end
