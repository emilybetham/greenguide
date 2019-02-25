class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :address
      t.float :longitude
      t.float :latitude
      t.string :category
      t.string :name
      t.text :description
      t.string :photo
      t.string :status
      t.integer :price

      t.timestamps
    end
  end
end
