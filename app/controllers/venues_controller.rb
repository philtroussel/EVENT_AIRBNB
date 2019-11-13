class VenuesController < ApplicationController
  def index
    @venues = Venue.all
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
    find_venue
    @venue.destroy
  end

  private

  def find_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :description, :price_per_hour, :capacity, :address)
  end
end
