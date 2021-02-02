class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :species, :null => false
      t.string :gender, :null => false
      t.string :weapon
      t.string :vehicle
      t.timestamps
    end
  end
end
