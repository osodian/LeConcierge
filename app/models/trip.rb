class Trip < ApplicationRecord
  belongs_to :user
  has_many :trip_reviews
  has_many :user_invitations
  has_many :hotel_bookings
  has_many :activity_bookings
  has_many :activities, through: :activity_bookings
  has_many :hotels, through: :hotel_bookings

  geocoded_by :destination
  after_validation :geocode, if: :will_save_change_to_destination?
end
