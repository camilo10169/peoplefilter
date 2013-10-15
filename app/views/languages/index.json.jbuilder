json.array!(@languages) do |language|
  json.extract! language, :name, :description, :institute, :domain, :person_id
  json.url language_url(language, format: :json)
end
