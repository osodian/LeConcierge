class Activity < ApplicationRecord
    has_many :activity_bookings
    has_one_attached :photo
end
