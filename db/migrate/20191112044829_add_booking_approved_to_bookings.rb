class AddBookingApprovedToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :booking_approved, :boolean
  end
end
