class VenuesController < ApplicationController

  def index
    venues_f_name = Venue.search_by_address(params[:city])

    venues_f_geo = venues_f_name.geocoded

    venue = venues_f_geo.where(capacity: params[:capacity].to_s)

    @venues = policy_scope(venue)

    datetime_checkin = [params[:datetimein], params[:hourtimein]].join(" ").to_datetime
    datetime_checkout = [params[:datetimeout], params[:hourtimeout]].join(" ").to_datetime

    #@venues = venues.joins(:bookings)

    @markers = @venues.map do |venue|
      {
        lat: venue.latitude,
        lng: venue.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { venue: venue })
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



#  def filtered_venues
#    venues_f_name = Venue.search_by_address(params[:city])
#
#   venues_f_geo = venues_f_name.geocoded
#
#    venue_f_cap = venues_f_geo.where(capacity: params[:capacity].to_s)
#
#    venues = policy_scope(venue_f_cap)
#
#    datetime_checkin = [params[:datetimein], params[:hourtimein]].join(" ").to_datetime
#    datetime_checkout = [params[:datetimeout], params[:hourtimeout]].join(" ").to_datetime
#
#    venues.left_outer_joins(:bookings)
#          .where("(check_in_date_time < ? OR check_out_date_time > ?) AND check_out_date_time > ?",
#          datetime_checkin, datetime_checkout, datetime_checkout)
#  end
