# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Client.destroy_all
Restaurant.destroy_all
Booking.destroy_all

Client.create([
  {
    first_name: "John",
    last_name: "Doe",
    phone_number: "555-1234",
    ccr: 3.5
  },
  {
    first_name: "Jane",
    last_name: "Smith",
    phone_number: "555-5678",
    ccr: 4.9
  },
  {
    first_name: "Alice",
    last_name: "Johnson",
    phone_number: "555-8765",
    ccr: 2.2
  },
  {
    first_name: "Bob",
    last_name: "Brown",
    phone_number: "555-4321",
    ccr: 3.9
  }
])

Restaurant.create(
  email: "info@gourmetbistro.com",
  password: "1234567",
  name: "Gourmet Bistro",
  ccr_acceptance: 2.5,
  capacity: 100
 )

client = Client.create!(
  first_name: "Client 2",
  last_name: "Last Name 2",
  phone_number: "920567432",
  ccr: 4.4
)

Booking.create(
  booking_start: DateTime.new(2024, 6, 5, 19, 0, 0),
  booking_end: DateTime.new(2024, 6, 5, 21, 0, 0),
  comment: "Birthday celebration",
  party_count: 4,
  restaurant_id: 6,
  client_id: 32
)

Booking.create(
  booking_start: DateTime.new(2024, 6, 6, 12, 0, 0),
  booking_end: DateTime.new(2024, 6, 6, 14, 0, 0),
  comment: "Business lunch meeting",
  party_count: 2,
  restaurant_id: 6,
  client_id: 33
)

Booking.create(
  booking_start: DateTime.new(2024, 6, 7, 18, 30, 0),
  booking_end: DateTime.new(2024, 6, 7, 20, 30, 0),
  comment: "Anniversary dinner",
  party_count: 3,
  restaurant_id: 6,
  client_id: 34
)

Booking.create(
  booking_start: DateTime.new(2024, 6, 8, 20, 0, 0),
  booking_end: DateTime.new(2024, 6, 8, 22, 0, 0),
  comment: "Family gathering",
  party_count: 5,
  restaurant_id: 6,
  client_id: 35
)
