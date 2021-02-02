class CreatePersonLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :person_locations do |t|
      t.references :location, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
