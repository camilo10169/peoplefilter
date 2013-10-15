class CreatePersonalInfos < ActiveRecord::Migration
  def change
    create_table :personal_infos do |t|
      t.string :gender
      t.string :marital_status
      t.string :country_birth
      t.string :dpto_birth
      t.string :city_birth
      t.text :job_profile
      t.integer :years_experience
      t.float :wage_aspiration
      t.boolean :has_job
      t.string :native_language
      t.references :person, index: true

      t.timestamps
    end
  end
end
