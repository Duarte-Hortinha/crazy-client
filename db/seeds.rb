# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'destroying records'
Restaurant.destroy_all
Client.destroy_all
Booking.destroy_all
Review.destroy_all

puts 'creating restaurant'
restaurant = Restaurant.create!(
  email: "info@gourmetbistro.com",
  password: "1234567",
  name: "Gourmet Bistro",
  ccr_acceptance: 2.5,
  capacity: 100
)

restaurant2 = Restaurant.create!(
  email: "hello@seasidegrill.com",
  password: "password2",
  name: "Seaside Grill",
  ccr_acceptance: 4.5,
  capacity: 80
)

restaurant3 = Restaurant.create!(
  email: "reservations@mountaindelight.com",
  password: "password3",
  name: "Mountain Delight",
  ccr_acceptance: 2.0,
  capacity: 150
)

restaurant4 = Restaurant.create!(
  email: "info@citytavern.com",
  password: "password4",
  name: "City Tavern",
  ccr_acceptance: 3.8,
  capacity: 90
)

restaurant5 = Restaurant.create!(
  email: "support@lakesidecafe.com",
  password: "password5",
  name: "Lakeside Cafe",
  ccr_acceptance: 4.2,
  capacity: 70
)

restaurant6 = Restaurant.create!(
  email: "bookings@downtownbistro.com",
  password: "password6",
  name: "Downtown Bistro",
  ccr_acceptance: 3.5,
  capacity: 110
)

restaurant7 = Restaurant.create!(
  email: "info@countrykitchen.com",
  password: "password7",
  name: "Country Kitchen",
  ccr_acceptance: 2.8,
  capacity: 130
)

restaurant8 = Restaurant.create!(
  email: "contact@fusiongrill.com",
  password: "password8",
  name: "Fusion Grill",
  ccr_acceptance: 3.2,
  capacity: 95
)

restaurant9 = Restaurant.create!(
  email: "info@atasca.com",
  password: "1234567",
  name: "A Tasca",
  ccr_acceptance: 1,
  capacity: 80
)

restaurant10 = Restaurant.create!(
  email: "contact@urbanplate.com",
  password: "password1",
  name: "Urban Plate",
  ccr_acceptance: 3.0,
  capacity: 120
)

puts 'creating clients'
client1 = Client.create!(
  first_name: "Jane",
  last_name: "Smith",
  phone_number: "555-5678",
  ccr: 4.0
)

client2 = Client.create!(
  first_name: "Michael",
  last_name: "Johnson",
  phone_number: "555-8765",
  ccr: 2.8
)

client3 = Client.create!(
  first_name: "Emily",
  last_name: "Davis",
  phone_number: "555-4321",
  ccr: 3.9
)

client4 = Client.create!(
  first_name: "David",
  last_name: "Miller",
  phone_number: "555-9876",
  ccr: 2.5
)

client5 = Client.create!(
  first_name: "Sarah",
  last_name: "Wilson",
  phone_number: "555-3456",
  ccr: 4.3
)

client6 = Client.create!(
  first_name: "Christopher",
  last_name: "Moore",
  phone_number: "555-6543",
  ccr: 3.1
)

client7 = Client.create!(
  first_name: "Amanda",
  last_name: "Taylor",
  phone_number: "555-7890",
  ccr: 2.9
)

client8 = Client.create!(
  first_name: "Joshua",
  last_name: "Anderson",
  phone_number: "555-0987",
  ccr: 3.7
)

client9 = Client.create!(
  first_name: "Olivia",
  last_name: "Thomas",
  phone_number: "555-1122",
  ccr: 4.1
)

client10 = Client.create!(
  first_name: "Daniel",
  last_name: "Jackson",
  phone_number: "555-2233",
  ccr: 2.7
)

client11 = Client.create!(
  first_name: "Hannah",
  last_name: "White",
  phone_number: "555-3344",
  ccr: 3.3
)

client12 = Client.create!(
  first_name: "James",
  last_name: "Harris",
  phone_number: "555-4455",
  ccr: 4.2
)

client13 = Client.create!(
  first_name: "Abigail",
  last_name: "Martin",
  phone_number: "555-5566",
  ccr: 3.0
)

client14 = Client.create!(
  first_name: "Andrew",
  last_name: "Thompson",
  phone_number: "555-6677",
  ccr: 2.6
)

client15 = Client.create!(
  first_name: "Megan",
  last_name: "Garcia",
  phone_number: "555-7788",
  ccr: 3.4
)

client16 = Client.create!(
  first_name: "Matthew",
  last_name: "Martinez",
  phone_number: "555-8899",
  ccr: 4.4
)

client17 = Client.create!(
  first_name: "Sophia",
  last_name: "Robinson",
  phone_number: "555-9900",
  ccr: 3.6
)

client18 = Client.create!(
  first_name: "Ryan",
  last_name: "Clark",
  phone_number: "555-0011",
  ccr: 2.4
)

client19 = Client.create!(
  first_name: "Elizabeth",
  last_name: "Rodriguez",
  phone_number: "555-1123",
  ccr: 3.8
)

client20 = Client.create!(
  first_name: "Joseph",
  last_name: "Lewis",
  phone_number: "555-2234",
  ccr: 2.3
)

client21 = Client.create!(
  first_name: "Chloe",
  last_name: "Lee",
  phone_number: "555-3345",
  ccr: 3.2
)

client22 = Client.create!(
  first_name: "Benjamin",
  last_name: "Walker",
  phone_number: "555-4456",
  ccr: 4.1
)

client23 = Client.create!(
  first_name: "Ava",
  last_name: "Hall",
  phone_number: "555-5567",
  ccr: 3.5
)

client24 = Client.create!(
  first_name: "Samuel",
  last_name: "Allen",
  phone_number: "555-6678",
  ccr: 2.9
)

client25 = Client.create!(
  first_name: "Grace",
  last_name: "Young",
  phone_number: "555-7789",
  ccr: 3.7
)

client26 = Client.create!(
  first_name: "Nicholas",
  last_name: "Hernandez",
  phone_number: "555-8890",
  ccr: 4.0
)

client27 = Client.create!(
  first_name: "Mia",
  last_name: "King",
  phone_number: "555-9901",
  ccr: 3.4
)

client28 = Client.create!(
  first_name: "Anthony",
  last_name: "Wright",
  phone_number: "555-1011",
  ccr: 2.8
)

client29 = Client.create!(
  first_name: "Charlotte",
  last_name: "Lopez",
  phone_number: "555-1235",
  ccr: 3.6
)

client30 = Client.create!(
  first_name: "Gabriel",
  last_name: "Hill",
  phone_number: "555-2345",
  ccr: 4.2
)

client31 = Client.create!(
  first_name: "Lily",
  last_name: "Scott",
  phone_number: "555-3457",
  ccr: 3.1
)

client32 = Client.create!(
  first_name: "Jackson",
  last_name: "Green",
  phone_number: "555-4567",
  ccr: 2.7
)

client33 = Client.create!(
  first_name: "Ella",
  last_name: "Adams",
  phone_number: "555-5679",
  ccr: 3.3
)

client34 = Client.create!(
  first_name: "William",
  last_name: "Baker",
  phone_number: "555-6789",
  ccr: 4.4
)

client35 = Client.create!(
  first_name: "Samantha",
  last_name: "Gonzalez",
  phone_number: "555-7891",
  ccr: 2.6
)

client36 = Client.create!(
  first_name: "Alexander",
  last_name: "Nelson",
  phone_number: "555-8901",
  ccr: 3.9
)

client37 = Client.create!(
  first_name: "Natalie",
  last_name: "Carter",
  phone_number: "555-9012",
  ccr: 2.4
)

client38 = Client.create!(
  first_name: "Ethan",
  last_name: "Mitchell",
  phone_number: "555-0123",
  ccr: 4.3
)

client39 = Client.create!(
  first_name: "Alyssa",
  last_name: "Perez",
  phone_number: "555-1236",
  ccr: 3.0
)

client40 = Client.create!(
  first_name: "Logan",
  last_name: "Roberts",
  phone_number: "555-2346",
  ccr: 2.5
)

client41 = Client.create!(
  first_name: "Victoria",
  last_name: "Turner",
  phone_number: "555-3458",
  ccr: 3.2
)

client42 = Client.create!(
  first_name: "Mason",
  last_name: "Phillips",
  phone_number: "555-4568",
  ccr: 4.0
)

client43 = Client.create!(
  first_name: "Lillian",
  last_name: "Campbell",
  phone_number: "555-5670",
  ccr: 3.8
)

client44 = Client.create!(
  first_name: "Isaac",
  last_name: "Parker",
  phone_number: "555-6780",
  ccr: 2.3
)

client45 = Client.create!(
  first_name: "Zoe",
  last_name: "Evans",
  phone_number: "555-7892",
  ccr: 3.5
)

client46 = Client.create!(
  first_name: "Luke",
  last_name: "Edwards",
  phone_number: "555-8902",
  ccr: 4.1
)

client47 = Client.create!(
  first_name: "Aria",
  last_name: "Collins",
  phone_number: "555-9013",
  ccr: 3.3
)

client48 = Client.create!(
  first_name: "Jack",
  last_name: "Stewart",
  phone_number: "555-0124",
  ccr: 2.4
)

client49 = Client.create!(
  first_name: "Amelia",
  last_name: "Sanchez",
  phone_number: "555-1237",
  ccr: 3.6
)

client50 = Client.create!(
  first_name: "Owen",
  last_name: "Morris",
  phone_number: "555-2347",
  ccr: 4.0
)

client51 = Client.create!(
  first_name: "Avery",
  last_name: "Rogers",
  phone_number: "555-3459",
  ccr: 3.1
)

client52 = Client.create!(
  first_name: "Evelyn",
  last_name: "Reed",
  phone_number: "555-4569",
  ccr: 2.9
)

client53 = Client.create!(
  first_name: "Isaiah",
  last_name: "Cook",
  phone_number: "555-5671",
  ccr: 3.7
)

client54 = Client.create!(
  first_name: "Addison",
  last_name: "Morgan",
  phone_number: "555-6781",
  ccr: 4.2
)

client55 = Client.create!(
  first_name: "Henry",
  last_name: "Bell",
  phone_number: "555-7893",
  ccr: 3.0
)

client56 = Client.create!(
  first_name: "Landon",
  last_name: "Murphy",
  phone_number: "555-8903",
  ccr: 2.5
)

client57 = Client.create!(
  first_name: "Aubrey",
  last_name: "Bailey",
  phone_number: "555-9014",
  ccr: 3.8
)

client58 = Client.create!(
  first_name: "Sebastian",
  last_name: "Rivera",
  phone_number: "555-0125",
  ccr: 2.7
)

client59 = Client.create!(
  first_name: "Harper",
  last_name: "Cooper",
  phone_number: "555-1238",
  ccr: 4.4
)

client60 = Client.create!(
  first_name: "Julian",
  last_name: "Richardson",
  phone_number: "555-2348",
  ccr: 3.2
)

client61 = Client.create!(
  first_name: "Ella",
  last_name: "Cox",
  phone_number: "555-3450",
  ccr: 2.8
)

client62 = Client.create!(
  first_name: "Levi",
  last_name: "Howard",
  phone_number: "555-4560",
  ccr: 3.9
)

client63 = Client.create!(
  first_name: "Luna",
  last_name: "Ward",
  phone_number: "555-5672",
  ccr: 4.0
)

client64 = Client.create!(
  first_name: "Caleb",
  last_name: "Torres",
  phone_number: "555-6782",
  ccr: 3.5
)

client65 = Client.create!(
  first_name: "Avery",
  last_name: "Peterson",
  phone_number: "555-7894",
  ccr: 2.6
)

client66 = Client.create!(
  first_name: "Natalie",
  last_name: "Gray",
  phone_number: "555-8904",
  ccr: 3.3
)

client67 = Client.create!(
  first_name: "Daniel",
  last_name: "Ramirez",
  phone_number: "555-9015",
  ccr: 2.4
)

client68 = Client.create!(
  first_name: "Mila",
  last_name: "James",
  phone_number: "555-0126",
  ccr: 3.8
)

client69 = Client.create!(
  first_name: "Elijah",
  last_name: "Watson",
  phone_number: "555-1239",
  ccr: 4.3
)

client70 = Client.create!(
  first_name: "Zoey",
  last_name: "Brooks",
  phone_number: "555-2349",
  ccr: 3.0
)

client71 = Client.create!(
  first_name: "Connor",
  last_name: "Kelly",
  phone_number: "555-3451",
  ccr: 2.5
)

client72 = Client.create!(
  first_name: "Stella",
  last_name: "Sanders",
  phone_number: "555-4561",
  ccr: 3.7
)

client73 = Client.create!(
  first_name: "Lucas",
  last_name: "Price",
  phone_number: "555-5673",
  ccr: 4.0
)

client74 = Client.create!(
  first_name: "Paisley",
  last_name: "Bennett",
  phone_number: "555-6783",
  ccr: 3.4
)

client75 = Client.create!(
  first_name: "Grayson",
  last_name: "Wood",
  phone_number: "555-7895",
  ccr: 2.9
)

client76 = Client.create!(
  first_name: "Scarlett",
  last_name: "Barnes",
  phone_number: "555-8905",
  ccr: 3.1
)

client77 = Client.create!(
  first_name: "Carter",
  last_name: "Ross",
  phone_number: "555-9016",
  ccr: 4.2
)

client78 = Client.create!(
  first_name: "Penelope",
  last_name: "Henderson",
  phone_number: "555-0127",
  ccr: 3.6
)

client79 = Client.create!(
  first_name: "Wyatt",
  last_name: "Coleman",
  phone_number: "555-1240",
  ccr: 2.8
)

client80 = Client.create!(
  first_name: "Camila",
  last_name: "Jenkins",
  phone_number: "555-2350",
  ccr: 3.9
)

client81 = Client.create!(
  first_name: "Nathan",
  last_name: "Perry",
  phone_number: "555-3452",
  ccr: 4.1
)

client82 = Client.create!(
  first_name: "Aurora",
  last_name: "Powell",
  phone_number: "555-4562",
  ccr: 3.2
)

client83 = Client.create!(
  first_name: "Eli",
  last_name: "Long",
  phone_number: "555-5674",
  ccr: 2.4
)

client84 = Client.create!(
  first_name: "Violet",
  last_name: "Patterson",
  phone_number: "555-6784",
  ccr: 3.5
)

client85 = Client.create!(
  first_name: "Isaac",
  last_name: "Hughes",
  phone_number: "555-7896",
  ccr: 4.4
)

client86 = Client.create!(
  first_name: "Riley",
  last_name: "Flores",
  phone_number: "555-8906",
  ccr: 3.0
)


puts 'creating bookings'
booking1 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 10, 18, 0, 0),
  booking_end: DateTime.new(2024, 6, 10, 20, 0, 0),
  comment: "Anniversary dinner",
  party_count: 2,
  restaurant_id: restaurant1.id,
  client_id: client1.id
)

booking2 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 12, 19, 0, 0),
  booking_end: DateTime.new(2024, 6, 12, 21, 0, 0),
  comment: "Business meeting",
  party_count: 3,
  restaurant_id: restaurant2.id,
  client_id: client2.id
)

booking3 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 15, 20, 0, 0),
  booking_end: DateTime.new(2024, 6, 15, 22, 0, 0),
  comment: "Family gathering",
  party_count: 5,
  restaurant_id: restaurant3.id,
  client_id: client3.id
)

booking4 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 17, 18, 30, 0),
  booking_end: DateTime.new(2024, 6, 17, 20, 30, 0),
  comment: "Date night",
  party_count: 2,
  restaurant_id: restaurant4.id,
  client_id: client4.id
)

booking5 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 20, 19, 30, 0),
  booking_end: DateTime.new(2024, 6, 20, 21, 30, 0),
  comment: "Friends reunion",
  party_count: 6,
  restaurant_id: restaurant5.id,
  client_id: client5.id
)

booking6 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 22, 18, 0, 0),
  booking_end: DateTime.new(2024, 6, 22, 20, 0, 0),
  comment: "Birthday celebration",
  party_count: 4,
  restaurant_id: restaurant6.id,
  client_id: client6.id
)

booking7 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 24, 19, 0, 0),
  booking_end: DateTime.new(2024, 6, 24, 21, 0, 0),
  comment: "Graduation party",
  party_count: 8,
  restaurant_id: restaurant7.id,
  client_id: client7.id
)

booking8 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 26, 20, 0, 0),
  booking_end: DateTime.new(2024, 6, 26, 22, 0, 0),
  comment: "Casual dinner",
  party_count: 3,
  restaurant_id: restaurant8.id,
  client_id: client8.id
)

booking9 = Booking.create!(
  booking_start: DateTime.new(2024, 6, 28, 18, 30, 0),
  booking_end: DateTime.new(2024, 6, 28, 20, 30, 0),
  comment: "Family dinner",
  party_count: 5,
  restaurant_id: restaurant1.id,
  client_id: client9.id
)

booking10 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 1, 19, 30, 0),
  booking_end: DateTime.new(2024, 7, 1, 21, 30, 0),
  comment: "Friends night out",
  party_count: 4,
  restaurant_id: restaurant2.id,
  client_id: client10.id
)

booking11 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 3, 18, 0, 0),
  booking_end: DateTime.new(2024, 7, 3, 20, 0, 0),
  comment: "Team dinner",
  party_count: 10,
  restaurant_id: restaurant3.id,
  client_id: client11.id
)

booking12 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 5, 19, 0, 0),
  booking_end: DateTime.new(2024, 7, 5, 21, 0, 0),
  comment: "Romantic dinner",
  party_count: 2,
  restaurant_id: restaurant4.id,
  client_id: client12.id
)

booking13 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 7, 20, 0, 0),
  booking_end: DateTime.new(2024, 7, 7, 22, 0, 0),
  comment: "Celebration dinner",
  party_count: 6,
  restaurant_id: restaurant5.id,
  client_id: client13.id
)

booking14 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 9, 18, 30, 0),
  booking_end: DateTime.new(2024, 7, 9, 20, 30, 0),
  comment: "Family reunion",
  party_count: 7,
  restaurant_id: restaurant6.id,
  client_id: client14.id
)

booking15 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 11, 19, 30, 0),
  booking_end: DateTime.new(2024, 7, 11, 21, 30, 0),
  comment: "Wedding reception",
  party_count: 20,
  restaurant_id: restaurant7.id,
  client_id: client15.id
)

booking16 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 13, 18, 0, 0),
  booking_end: DateTime.new(2024, 7, 13, 20, 0, 0),
  comment: "Baby shower",
  party_count: 10,
  restaurant_id: restaurant8.id,
  client_id: client16.id
)

booking17 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 15, 19, 0, 0),
  booking_end: DateTime.new(2024, 7, 15, 21, 0, 0),
  comment: "Corporate event",
  party_count: 15,
  restaurant_id: restaurant1.id,
  client_id: client.id
)

booking18 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 17, 20, 0, 0),
  booking_end: DateTime.new(2024, 7, 17, 22, 0, 0),
  comment: "Casual dinner",
  party_count: 4,
  restaurant_id: restaurant2.id,
  client_id: client18.id
)

booking19 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 19, 18, 30, 0),
  booking_end: DateTime.new(2024, 7, 19, 20, 30, 0),
  comment: "Birthday celebration",
  party_count: 5,
  restaurant_id: restaurant3.id,
  client_id: client19.id
)

booking20 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 21, 19, 30, 0),
  booking_end: DateTime.new(2024, 7, 21, 21, 30, 0),
  comment: "Anniversary dinner",
  party_count: 2,
  restaurant_id: restaurant4.id,
  client_id: client20.id
)

booking21 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 23, 18, 0, 0),
  booking_end: DateTime.new(2024, 7, 23, 20, 0, 0),
  comment: "Friends night out",
  party_count: 4,
  restaurant_id: restaurant5.id,
  client_id: client21.id
)

booking22 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 25, 19, 0, 0),
  booking_end: DateTime.new(2024, 7, 25, 21, 0, 0),
  comment: "Business dinner",
  party_count: 3,
  restaurant_id: restaurant6.id,
  client_id: client22.id
)

booking23 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 27, 20, 0, 0),
  booking_end: DateTime.new(2024, 7, 27, 22, 0, 0),
  comment: "Graduation celebration",
  party_count: 6,
  restaurant_id: restaurant7.id,
  client_id: client23.id
)

booking24 = Booking.create!(
  booking_start: DateTime.new(2024, 7, 29, 18, 30, 0),
  booking_end: DateTime.new(2024, 7, 29, 20, 30, 0),
  comment: "Family dinner",
  party_count: 5,
  restaurant_id: restaurant8.id,
  client_id: client24.id
)

booking25 = Booking.create!(
  booking_start: DateTime.new(2024, 8, 1, 19, 30, 0),
  booking_end: DateTime.new(2024, 8, 1, 21, 30, 0),
  comment: "Engagement party",
  party_count: 8,
  restaurant_id: restaurant1.id,
  client_id: client25.id
)

booking26 = Booking.create!(
  booking_start: DateTime.new(2024, 8, 3, 18, 0, 0),
  booking_end: DateTime.new(2024, 8, 3, 20, 0, 0),
  comment: "Team dinner",
  party_count: 10,
  restaurant_id: restaurant2.id,
  client_id: client26.id
)

booking27 = Booking.create!(
  booking_start: DateTime.new(2024, 8, 5, 19, 0, 0),
  booking_end: DateTime.new(2024, 8, 5, 21, 0, 0),
  comment: "Celebration dinner",
  party_count: 6,
  restaurant_id: restaurant3.id,
  client_id: client27.id
)

booking28 = Booking.create!(
  booking_start: DateTime.new(2024, 8, 7, 20, 0, 0),
  booking_end: DateTime.new(2024, 8, 7, 22, 0, 0),
  comment: "Romantic dinner",
  party_count: 2,
  restaurant_id: restaurant4.id,
  client_id: client28.id
)

booking29 = Booking.create!(
  booking_start: DateTime.new(2024, 8, 9, 18, 30, 0),
  booking_end: DateTime.new(2024, 8, 9, 20, 30, 0),
  comment: "Family gathering",
  party_count: 7,
  restaurant_id: restaurant5.id,
  client_id: client29.id
)

booking30 = Booking.create!(
  booking_start: DateTime.new(2024, 8, 11, 19, 30, 0),
  booking_end: DateTime.new(2024, 8, 11, 21, 30, 0),
  comment: "Birthday celebration",
  party_count: 4,
  restaurant_id: restaurant6.id,
  client_id: client30.id
)


puts "creating Reviews"
review1 = Review.create!(
  punctuality: 50,
  comment: "The service was excellent and very punctual.",
  attendance: true,
  booking_id: booking1.id,
  created_at: Time.now
)

review2 = Review.create!(
  punctuality: 40,
  comment: "Good service, but a bit late on serving the main course.",
  attendance: true,
  booking_id: booking2.id,
  created_at: Time.now
)

review3 = Review.create!(
  punctuality: 45,
  comment: "Everything was great, just a slight delay at the beginning.",
  attendance: true,
  booking_id: booking3.id,
  created_at: Time.now
)

review4 = Review.create!(
  punctuality: 50,
  comment: "Amazing experience, very timely service.",
  attendance: true,
  booking_id: booking4.id,
  created_at: Time.now
)

review5 = Review.create!(
  punctuality: 35,
  comment: "The service was okay, but they took a while to get to us.",
  attendance: true,
  booking_id: booking5.id,
  created_at: Time.now
)

review6 = Review.create!(
  punctuality: 50,
  comment: "Excellent service, right on time!",
  attendance: true,
  booking_id: booking6.id,
  created_at: Time.now
)

review7 = Review.create!(
  punctuality: 48,
  comment: "Great timing and wonderful service.",
  attendance: true,
  booking_id: booking7.id,
  created_at: Time.now
)

review8 = Review.create!(
  punctuality: 30,
  comment: "Service was slow, waited quite a while for our food.",
  attendance: true,
  booking_id: booking8.id,
  created_at: Time.now
)

review9 = Review.create!(
  punctuality: 50,
  comment: "Very punctual, no complaints.",
  attendance: true,
  booking_id: booking9.id,
  created_at: Time.now
)

review10 = Review.create!(
  punctuality: 45,
  comment: "Service was good, just a minor delay in serving.",
  attendance: true,
  booking_id: booking10.id,
  created_at: Time.now
)


puts 'done seeding'
