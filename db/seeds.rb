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
