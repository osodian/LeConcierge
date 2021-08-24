class HotelBookingsController < ApplicationController
  def new
    @hotel_booking = HotelBooking.new
    @trip = Trip.find(params[:trip_id])
    @hotel_booking.trip = @trip
    authorize @hotel_booking
  end

  def create
    @hotel = Hotel.find(params[:hotel_id])
    @trip = Trip.find(params[:trip_id])
    @hotel_booking = HotelBooking.new(hotel_booking_params)
    @hotel_booking.hotel = @hotel
    @hotel_booking.trip = @trip
    @hotel_booking.trip.user = current_user
    authorize @hotel_booking
    if @hotel_booking.save
      redirect_to hotel_booking_path(@hotel_booking), notice: 'New hotel Booking was created successfully!'
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
    params.require(:hotel_booking).permit(:booking_date, :people)
  end
end
