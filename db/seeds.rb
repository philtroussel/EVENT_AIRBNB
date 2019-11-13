require 'faker'
puts 'Deleting previous data'
Booking.destroy_all
Venue.destroy_all
User.destroy_all


venues = [
  {
    name: "Nice Living Room",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
    price_per_hour: 100,
    capacity: "100 guests",
    address: "Agustín Melgar 6, Colonia Condesa, 06140 Ciudad de México, CDMX",
    },

  {
    name: "Nice Living Room",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1494672203374-c593733a6150?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80",
    price_per_hour: 50,
    capacity: "100 guests",
    address: "Agustín Melgar 6, Colonia Condesa, 06140 Ciudad de México, CDMX",
    },

  {
    name: "Nice Living Room",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1425421598808-4a22ce59cc97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
    price_per_hour: 150,
    capacity: "100 guests",
    address: "Agustín Melgar 6, Colonia Condesa, 06140 Ciudad de México, CDMX",
    },

  {
    name: "Nice Living Room",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1536201378320-9a70e6815ad3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3034&q=80",
    price_per_hour: 200,
    capacity: "100 guests",
    address: "Agustín Melgar 6, Colonia Condesa, 06140 Ciudad de México, CDMX",
    },

  {
    name: "Nice Living Room",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1462446892934-2c17979efefd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3150&q=80",
    price_per_hour: 111,
    capacity: "100 guests",
    address: "Agustín Melgar 6, Colonia Condesa, 06140 Ciudad de México, CDMX",
    },

  {
    name: "Nice Living Room",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
    price_per_hour: 234,
    capacity: "100 guests",
    address: "Agustín Melgar 6, Colonia Condesa, 06140 Ciudad de México, CDMX",
    }
]

puts 'Creating users'
6.times do
  user = User.new(
  email: Faker::Internet.email,
  password: '12345678'
  )
  user.save!
end

core_user = User.new(
  first_name: 'Dan',
  last_name: 'Smith',
  email: 'dan@gmail.com',
  password: '12345678',
  role: 'butt pirate'
  )
core_user.save!

puts "Now #{User.count} users"
puts 'Creating venues'

venues.each do |venue|
  ven = Venue.new(venue)
  user = User.first
  ven.user = user
  ven.save!
end

puts 'Creating bookings'

bookings = %w(1 2 3 4 5 6)
6.times do
  book = Booking.new
  book.user = User.find(rand(User.first.id..User.last.id))
  book.venue = Venue.find(rand(Venue.first.id..Venue.last.id))
  book.save!
end


