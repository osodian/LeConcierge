class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.string :city
      t.text :description
      t.string :category
      t.integer :price
      t.integer :price_class

      t.timestamps
    end
  end
end
