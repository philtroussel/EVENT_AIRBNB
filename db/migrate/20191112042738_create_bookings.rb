class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :check_in_date_time
      t.datetime :check_out_date_time
      t.integer :total_price
      t.boolean :booking_approve
      t.references :user, foreign_key: true
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
