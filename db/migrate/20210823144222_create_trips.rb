class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :total_price
      t.boolean :booked
      t.datetime :date_coming
      t.datetime :date_leaving
      t.string :destination
      t.string :type_transportation
      t.integer :people

      t.timestamps
    end
  end
end
