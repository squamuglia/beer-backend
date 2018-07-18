class Floors < ActiveRecord::Migration[5.2]
  def change
    create_table :floors do |t|
      t.integer :number
      t.integer :building_id

      t.timestamps
    end
  end
end
