class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    # @trips = policy_scope(Trip)
    @trips = Trip.all

    # @trips = policy_scope(Trip).order(created_at: :desc)
    @markers = @trips.geocoded.map do |trip|
      {
        lat: trip.latitude,
        lng: trip.longitude,
        info_window: render_to_string(partial: "info_window_trip", locals: {
          trip: trip }),
          image_url: helpers.asset_url('icons/flag.png')
        }
      end
      @trips = @trips.sort_by { |trip|[trip.date_coming] }
  end

    # if params[:query].present?
    #   @trips = Trip.where(destination: params[:query])
    # else
    #   @trips = Trip.all
    # end

    # if params[:query].present?
    #   @trips = Trip.where("destination ILIKE ?", "%#{params[:query]}%")
    # else
    #   @trips = Trip.all
    # end

    # @markers = @trips.geocoded.map do |trip|
    #   {
    #     lat: trip.latitude,
    #     lng: trip.longitude,
    #     info_window: render_to_string(partial: "info_window", locals: { trip: trip })
    #   }
    # end

  def show
    @trip = Trip.find(params[:id])
    @activity_bookings = @trip.activity_bookings.sort_by { |trip|[trip.booking_date] }
    # @trip.activity_bookings.booking_dates.sort
    # @trip.activity_bookings.sort_by { |trip| [trip.booking_date] }
    # sorted_date = @trip.activity_bookings
    # sorted = @trip.activity_bookings.booking_date.sort
    # sorted.reverse! if direction == "DESC"

    count_price = 0
    final_price = 0
    @trip.activities.each do |activity|
      if activity.price.nil?
        puts "No fixed price for an activity"
      else
        count_price += 1
        final_price += activity.price
      end
    end
    @trip.total_price = final_price


    dates_array = (@trip.date_coming.strftime("%b %d, %Y").to_date..@trip.date_leaving.strftime("%b %d, %Y").to_date).map {|d| d }
    # dates_index = dates_array.index
    @trip.hotels.each do |hotel|
      if hotel.price.nil?
        puts "No Price for the Hotel yet"
      else
        final_hotel = hotel.price * dates_array.count
      end
      @trip.total_price = final_price + final_hotel
    end

    markers_hotels = @trip.hotels.geocoded.map do |hotel|
      {
        lat: hotel.latitude,
        lng: hotel.longitude,
        info_window: render_to_string(partial: "info_window_hotel", locals: {
        hotel: hotel }),
        image_url: helpers.asset_url('icons/door.png')
      }
    end
    markers_activities = @trip.activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window_activity", locals: {
        activity: activity }),
        image_url: helpers.asset_url('icons/confiusing_bell.png')
      }
    end
    @markers = markers_hotels.concat markers_activities
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trip_path(@trip), notice: 'New Trip was created successfully!'
    else
      render :new
    end
  end

  # def destroy
  #   @trips = Trip.find(params[:id])
  #   @trips.destroy
  #   redirect_to trips_path
  # end
  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    redirect_to trips_path
  end


  private

  def trip_params
    params.require(:trip).permit(:type_transportation, :destination, :date_leaving, :date_coming, :booked, :total_price, :people, :user_id)
  end
end
