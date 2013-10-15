class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.text :description
      t.string :institute
      t.string :domain
      t.references :person, index: true

      t.timestamps
    end
  end
end
