json.array!(@qualifications) do |qualification|
  json.extract! qualification, :id, :title, :attachment
  json.url qualification_url(qualification, format: :json)
end
