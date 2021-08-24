class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.text :description
      t.string :price_class


      t.timestamps
    end
  end
end
