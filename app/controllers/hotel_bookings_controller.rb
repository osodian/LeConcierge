class HotelBookingsController < ApplicationController

  def create
    @trip = Trip.find(params[:trip_id])
    @hotel_booking = HotelBooking.new(hotel_booking_params)
    @hotel_booking.trip = @trip
    @hotel_booking.user = current_user
    if @hotel_booking.save
      redirect_to hotel_booking_path(@hotel_booking), notice: 'New Hotel Booking was created successfully!'
    else
      render :new
    end
  end

  def destroy
    @hotel_bookings = HotelBooking.find(params[:id])
    @hotel_bookings.destroy
    redirect_to hotel_bookings_path
  end

  private

  def hotel_booking_params
    params.require(:hotel_booking).permit(:date)
  end
end
