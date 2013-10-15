class CreateNoFormalEducations < ActiveRecord::Migration
  def change
    create_table :no_formal_educations do |t|
      t.string :type_study
      t.string :country
      t.string :department
      t.string :city
      t.string :degree
      t.string :institute
      t.string :area
      t.integer :time_intensity
      t.date :date_start
      t.date :date_end
      t.text :description
      t.boolean :validated
      t.references :person, index: true

      t.timestamps
    end
  end
end
