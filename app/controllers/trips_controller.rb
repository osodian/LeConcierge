class TripsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index

    # @trips = policy_scope(Trip)
    #@trips = Trip.all

    @trips = policy_scope(Trip).order(created_at: :desc)
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
  end

  def new
    @trip = Trip.new
    authorize @trip
  end

  def create
    @trip = Trip.new(trip_params)
    authorize @trip
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
#hiwdjwjl

  private

  def trip_params
    params.require(:trip).permit(:type_transportation, :destination, :date_leaving, :date_coming, :booked, :total_price, :people, :user_id)
  end
end
