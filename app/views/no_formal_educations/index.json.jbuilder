json.array!(@no_formal_educations) do |no_formal_education|
  json.extract! no_formal_education, :type_study, :country, :department, :city, :degree, :institute, :area, :time_intensity, :date_start, :date_end, :description, :validated, :person_id
  json.url no_formal_education_url(no_formal_education, format: :json)
end
