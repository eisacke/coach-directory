json.array!(@searches) do |search|
  json.extract! search, :id, :location, :radius, :keywords
  json.url search_url(search, format: :json)
end
