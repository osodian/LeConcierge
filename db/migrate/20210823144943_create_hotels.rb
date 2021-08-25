class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :price
      t.text :description
      t.integer :price_class


      t.timestamps
    end
  end
end
