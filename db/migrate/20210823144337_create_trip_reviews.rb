class CreateTripReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :trip_reviews do |t|
      t.references :trip, null: false, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
