class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :description
      t.integer :price_per_hour
      t.integer :capacity
      t.string :address

      t.timestamps
    end
  end
end
