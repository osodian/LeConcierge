class CreateHotelBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :hotel_bookings do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :hotel, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
