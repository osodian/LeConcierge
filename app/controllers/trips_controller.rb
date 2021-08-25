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
        trip: trip })
      }
    end
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
    count_price = 0
    final_price = 0
    @trip.activities.each do |activity|
      if activity.price.nil?
        puts "hey"
      else
        count_price += 1
        final_price += activity.price
      end
    end
    @trip.total_price = final_price

    markers_hotels = @trip.hotels.geocoded.map do |hotel|
      {
        lat: hotel.latitude,
        lng: hotel.longitude,
        info_window: render_to_string(partial: "info_window_hotel", locals: {
        hotel: hotel })
      }
    end
    markers_activities = @trip.activities.geocoded.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        info_window: render_to_string(partial: "info_window_activity", locals: {
        activity: activity })
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

  def destroy
    @trips = Trip.find(params[:id])
    @trips.destroy
    redirect_to trips_path
  end

  private

  def trip_params
    params.require(:trip).permit(:type_transportation, :destination, :date_leaving, :date_coming, :booked, :total_price, :people, :user_id)
  end
end
