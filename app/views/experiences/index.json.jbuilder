json.array!(@experiences) do |experience|
  json.extract! experience, :company, :phone, :sector, :position, :position_level, :position_equivalent, :area, :immediate_boss, :date_start, :date_end, :time_experience, :city, :function_performed, :actual_job, :validated, :person_id
  json.url experience_url(experience, format: :json)
end
