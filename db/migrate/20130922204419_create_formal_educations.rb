class CreateFormalEducations < ActiveRecord::Migration
  def change
    create_table :formal_educations do |t|
      t.string :level
      t.string :area
      t.string :degree
      t.string :institute
      t.string :country
      t.string :department
      t.string :city
      t.date :date_start
      t.date :date_end
      t.string :study_state
      t.boolean :validated
      t.references :person, index: true

      t.timestamps
    end
  end
end
