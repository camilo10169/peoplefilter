class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :last_name
      t.string :phone
      t.string :cellphone
      t.string :type
      t.string :company
      t.string :position
      t.references :person, index: true

      t.timestamps
    end
  end
end
