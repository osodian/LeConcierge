class ActivityBookingsController < ApplicationController
  def index
    @trip = Trip.find(params[:trip_id])
    @activities = Activity.all
  end

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
    @activity_booking = ActivityBooking.find(params[:id])
    @trip = @activity_booking.trip
    @activity_booking.destroy
    redirect_to trip_path(@trip)
  end

  def update
    @activity_booking = ActivityBooking.find(params[:id])
    @activity_booking.update(activity_booking_params)
    @trip = @activity_booking.trip
    redirect_to trip_path(@trip)
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
