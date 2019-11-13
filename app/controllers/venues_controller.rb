class VenuesController < ApplicationController
  def index
    @venues = Venue.geocoded

    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude
      }
    end
  end

  def show
    @booking = Booking.new
    @venue = Venue.find(params[:id])
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    @venue.save!
    redirect_to venue_path(@venue)
  end

  def edit
    find_venue
  end

  def update
    find_venue
    @venue.update(venue_params)
    redirect_to venue_path(@venue)
  end

  def destroy
    @venue = find_venue
    @venue.destroy
    redirect_to venues_path
  end

  private

  def find_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :description, :price_per_hour, :capacity, :address)
  end
end
