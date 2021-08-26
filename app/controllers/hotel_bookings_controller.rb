class HotelBookingsController < ApplicationController
  def index
    @trip = Trip.find(params[:trip_id])
    # @hotels = Hotel.all
    if @trip.destination.present?
      @hotels = Hotel.where("city ILIKE ?", "%#{@trip.destination}%")
    # else
    #   @activities = Activity.all
    end
  end

  def show
    @hotel_booking = HotelBooking.find(params[:id])
  end

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
    if @hotel_booking.save!
      redirect_to trip_path(@trip), notice: 'New hotel Booking was created successfully!'
    else
      render :new
    end
  end

  def destroy
    @hotel_booking = HotelBooking.find(params[:id])
    @trip = @hotel_booking.trip
    @hotel_booking.destroy
    redirect_to trip_path(@trip)
  end

  def update
    @hotel_booking = HotelBooking.find(params[:id])
    @hotel_booking.update(hotel_booking_params)
    @trip = @hotel_booking.trip
    redirect_to trip_path(@trip)
  end

  def edit
    @hotel_booking = HotelBooking.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @hotel_booking.trip = @trip
  end

  private

  def hotel_booking_params
    params.require(:hotel_booking).permit(:date_coming, :date_leaving, :hotel_id)
  end
end
