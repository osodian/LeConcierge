# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_25_133120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.string "category"
    t.integer "price"
    t.string "price_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "activity_bookings", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "activity_id", null: false
    t.boolean "status", default: false
    t.integer "people"
    t.datetime "booking_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_activity_bookings_on_activity_id"
    t.index ["trip_id"], name: "index_activity_bookings_on_trip_id"
  end

  create_table "hotel_bookings", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "hotel_id", null: false
    t.boolean "status", default: false
    t.datetime "date_coming"
    t.datetime "date_leaving"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hotel_id"], name: "index_hotel_bookings_on_hotel_id"
    t.index ["trip_id"], name: "index_hotel_bookings_on_trip_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "price"
    t.text "description"
    t.string "price_class"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "trip_reviews", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_trip_reviews_on_trip_id"
  end

  create_table "trips", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "total_price"
    t.boolean "booked", default: false
    t.datetime "date_coming"
    t.datetime "date_leaving"
    t.string "destination"
    t.string "type_transportation"
    t.integer "people"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "user_invitations", force: :cascade do |t|
    t.bigint "trip_id", null: false
    t.bigint "user_id", null: false
    t.boolean "status", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trip_id"], name: "index_user_invitations_on_trip_id"
    t.index ["user_id"], name: "index_user_invitations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "activity_bookings", "activities"
  add_foreign_key "activity_bookings", "trips"
  add_foreign_key "hotel_bookings", "hotels"
  add_foreign_key "hotel_bookings", "trips"
  add_foreign_key "trip_reviews", "trips"
  add_foreign_key "trips", "users"
  add_foreign_key "user_invitations", "trips"
  add_foreign_key "user_invitations", "users"
end
