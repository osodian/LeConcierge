class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

# rails generate model Trip user:references total_price:integer booked:boolean date_coming:datetime date_leaving:datetime destination:string type_transportation:string people:integer
# rails generate model TripReview trip:references content:text rating:integer
# rails generate model UserInvitation trip:references user:references status:boolean
# rails generate model Activity name:string address:string description:text category:string price:integer price_class:string
# rails generate model Hotel date_coming:datetime date_leaving:datetime name:string address:string price:integer description:text price_class:string
# rails generate model HotelBookings trip:references hotel:references status:boolean
# rails generate model ActivityBooking trip:references activity:references status:boolean people:integer booking_date:datetime
