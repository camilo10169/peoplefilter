class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :phone
      t.string :sector
      t.string :position
      t.string :position_level
      t.string :position_equivalent
      t.string :area
      t.string :immediate_boss
      t.date :date_start
      t.date :date_end
      t.integer :time_experience
      t.string :city
      t.text :function_performed
      t.boolean :actual_job
      t.boolean :validated
      t.references :person, index: true

      t.timestamps
    end
  end
end
