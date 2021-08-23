class CreateActivityBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_bookings do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.boolean :status
      t.integer :people
      t.datetime :booking_date

      t.timestamps
    end
  end
end
