json.array!(@convocations) do |convocation|
  json.extract! convocation, :position, :amount_vacancies, :hierarchy, :city, :department, :area, :subarea, :gender, :min_age, :max_age, :education_level, :education_state, :language, :description, :company_id
  json.url convocation_url(convocation, format: :json)
end
