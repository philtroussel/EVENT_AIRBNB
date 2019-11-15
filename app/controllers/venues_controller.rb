class VenuesController < ApplicationController
  def index
    venues = policy_scope(Venue)
    @venues = venues.geocoded

    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude
      }
    end

    # use scope to show all venues => checks venue_policy scope.all for all venues
    # for future to show only venues of owner
    # => scope.where(user: user) on the venue policy
  end

  def show
    @booking = Booking.new
    @venue = Venue.find(params[:id])
    authorize @venue
  end

  def new
    @venue = Venue.new
    authorize @venue
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    authorize @venue
    @venue.save!
    redirect_to venue_path(@venue)
  end

  def edit
    find_venue
    authorize @venue
  end

  def update
    find_venue
    authorize @venue
    @venue.update(venue_params)
    redirect_to venue_path(@venue)
  end

  def destroy
    find_venue
    authorize @venue
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

# to hide link to actions in html.erb file
# => <% if policy(venue).edit? %>
# => <% link_to 'Edit', edit_venue_path(venue) %>
# => <% end %>
# => if not eaching through, than call it on the class
