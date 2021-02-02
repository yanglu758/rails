class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :name, :null => false
      t.index :name, unique: true
      t.timestamps
    end
  end
end
