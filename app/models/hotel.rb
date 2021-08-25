class Hotel < ApplicationRecord
    has_many :hotel_bookings
    has_one_attached :photo
end
