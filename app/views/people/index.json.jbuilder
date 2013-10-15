json.array!(@people) do |person|
  json.extract! person, :name, :last_name, :identification, :phone, :city, :address, :type_identification, :account, :birthday, :cellphone, :career, :user_id
  json.url person_url(person, format: :json)
end
