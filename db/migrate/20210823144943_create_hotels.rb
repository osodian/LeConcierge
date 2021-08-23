class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.datetime :date_coming
      t.datetime :date_leaving
      t.string :name
      t.string :address
      t.integer :price
      t.text :description
      t.string :price_class

      t.timestamps
    end
  end
end
