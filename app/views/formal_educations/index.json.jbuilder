json.array!(@formal_educations) do |formal_education|
  json.extract! formal_education, :level, :area, :degree, :institute, :country, :department, :city, :date_start, :date_end, :study_state, :validated, :person_id
  json.url formal_education_url(formal_education, format: :json)
end
