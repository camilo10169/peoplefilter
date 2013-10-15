json.array!(@references) do |reference|
  json.extract! reference, :name, :last_name, :phone, :cellphone, :type, :company, :position, :person_id
  json.url reference_url(reference, format: :json)
end
