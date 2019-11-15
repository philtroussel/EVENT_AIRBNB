class AddCateringIdToBooking < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :catering_id, :integer
  end
end
