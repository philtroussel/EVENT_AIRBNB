class BookingsController < ApplicationController
  def index
    @bookings = Bookings.where(user_id: current_user)
  end

  def create
    @booking = Booking.new()
    raise
  end
end
