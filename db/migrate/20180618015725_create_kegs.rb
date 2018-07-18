class CreateKegs < ActiveRecord::Migration[5.2]
  def change
    create_table :kegs do |t|
      t.string :name
      t.string :style
      t.integer :calories
      t.integer :abv

      t.timestamps
    end
  end
end
