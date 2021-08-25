class ActivityBookingsController < ApplicationController
  def show
    @activity_booking = ActivityBooking.find(params[:id])
  end

  def new
    @activity_booking = ActivityBooking.new
    @trip = Trip.find(params[:trip_id])
    @activity_booking.trip = @trip
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @activity_booking = ActivityBooking.new(activity_booking_params)
    @activity_booking.trip = @trip
    # @activity_booking.trip.user = current_user

    if @activity_booking.save!
      redirect_to trip_path(@trip), notice: 'New activity Booking was created successfully!'
    else
      render :new
    end
  end

  def destroy
    @activity_bookings = ActivityBooking.find(params[:id])
    @activity_bookings.destroy
    redirect_to activity_bookings_path
  end

  def update
    @activity_bookings = ActivityBooking.find(params[:id])
    @activity_bookings.update(activity_booking_params)
    redirect_to trip_path(@trip), notice: 'Activity has been edited successfully!'
  end

  def edit
    @activity_booking = ActivityBooking.find(params[:id])
    @trip = Trip.find(params[:trip_id])
    @activity_booking.trip = @trip
  end

  private

  def activity_booking_params
    params.require(:activity_booking).permit(:booking_date, :people, :activity_id)
  end
end
