class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @venue = Venue.find(params[:venue_id])
    @booking = Booking.new()
    authorize @booking
    @booking.check_in_date_time = "2019-11-#{params[:booking]['check_in_date_time(3i)']} #{params[:booking]['check_in_date_time(4i)']}:00:00"
    @booking.check_out_date_time = "2019-11-#{params[:booking]['check_out_date_time(3i)']} #{params[:booking]['check_out_date_time(4i)']}:00:00"
    @booking.user = current_user
    @booking.total_price = params[:price]
    @booking.venue = @venue
    @booking.catering = Catering.new()
    @booking.save!
    redirect_to bookings_path
  end
end
