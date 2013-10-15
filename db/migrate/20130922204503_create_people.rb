class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :identification
      t.string :phone
      t.string :city
      t.string :address
      t.string :type_identification
      t.string :account
      t.date :birthday
      t.string :cellphone
      t.string :career
      t.references :user, index: true

      t.timestamps
    end
  end
end
