json.array!(@companies) do |company|
  json.extract! company, :name, :area, :address, :zip_code, :phone, :fax, :country, :department, :city, :nit, :website, :description, :amount_employees, :logo, :user_id
  json.url company_url(company, format: :json)
end
