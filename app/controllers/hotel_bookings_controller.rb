class HotelBookingsController < ApplicationController
  def new
    @hotel_booking = HotelBooking.new
    @trip = Trip.find(params[:trip_id])
    @hotel_booking.trip = @trip
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @hotel_booking = HotelBooking.new(hotel_booking_params)
    @hotel_booking.trip = @trip
    @hotel_booking.trip.user = current_user
    if @hotel_booking.save
      redirect_to trip_path(@trip), notice: 'New hotel Booking was created successfully!'
    else
      render :new
    end
  end

  def destroy
    @hotel_bookings = HotelBooking.find(params[:id])
    @hotel_bookings.destroy
    redirect_to hotel_bookings_path
  end

  def update
    @hotel_bookings = HotelBooking.find(params[:id])
    @hotel_bookings.update(hotel_booking_params)
    redirect_to hotel_bookings_path
  end

  private

  def hotel_booking_params
    params.require(:hotel_booking).permit(:date_coming, :date_leaving, :hotel_id)
  end
end
