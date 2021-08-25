class Hotel < ApplicationRecord
  has_many :hotel_bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
