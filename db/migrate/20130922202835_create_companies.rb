class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :area
      t.string :address
      t.string :zip_code
      t.string :phone
      t.string :fax
      t.string :country
      t.string :department
      t.string :city
      t.string :nit
      t.string :website
      t.text :description
      t.integer :amount_employees
      t.string :logo
      t.references :user, index: true

      t.timestamps
    end
  end
end
