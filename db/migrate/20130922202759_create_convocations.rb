class CreateConvocations < ActiveRecord::Migration
  def change
    create_table :convocations do |t|
      t.string :position
      t.integer :amount_vacancies
      t.string :hierarchy
      t.string :city
      t.string :department
      t.string :area
      t.string :subarea
      t.string :gender
      t.integer :min_age
      t.integer :max_age
      t.string :education_level
      t.string :education_state
      t.string :language
      t.text :description
      t.references :company, index: true

      t.timestamps
    end
  end
end
