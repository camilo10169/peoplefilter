json.array!(@personal_infos) do |personal_info|
  json.extract! personal_info, :gender, :marital_status, :country_birth, :dpto_birth, :city_birth, :job_profile, :years_experience, :wage_aspiration, :has_job, :native_language, :person_id
  json.url personal_info_url(personal_info, format: :json)
end
