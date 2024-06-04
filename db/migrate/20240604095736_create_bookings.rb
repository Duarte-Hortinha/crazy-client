class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :booking_start
      t.datetime :booking_end
      t.text :comment
      t.integer :party_count
      t.references :restaurant, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
