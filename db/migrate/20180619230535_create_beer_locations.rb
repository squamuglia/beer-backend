class CreateBeerLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :beer_locations do |t|
      t.integer :keg_id
      t.integer :floor_id

      t.timestamps
    end
  end
end
