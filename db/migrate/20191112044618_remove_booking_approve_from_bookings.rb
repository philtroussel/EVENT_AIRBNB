class RemoveBookingApproveFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_approve, :boolean
  end
end
