require 'faker'
puts 'Deleting previous data'
Booking.destroy_all
Venue.destroy_all
User.destroy_all
Catering.destroy_all


venues = [
  {
    name: "Nice Living Room",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80",
    price_per_hour: 100,
    capacity: "100 guests",
    address: "Parque Mexico Condesa",
    latitude: 32.5272022,
    longitude: -117.116433915799,
    picture: "https://meetingsyukon.com/wp-content/uploads/2013/04/KDCC-Longhouse-Set-for-Feast.jpg"
    },

  {
    name: "Nice GreenHouse",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1494672203374-c593733a6150?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80",
    price_per_hour: 11,
    capacity: "200 guests",
    address: "campeche 233, colonia Condesa",
    latitude: 19.4104139,
    longitude: -99.1758404,
    picture: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQux4HtTUSopoUMTSrMhkOI4lQLaEq3MdeZodSKy11LS101wgJQUg&s"
    },

  {
    name: "Nice Venue",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1494672203374-c593733a6150?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80",
    price_per_hour: 11,
    capacity: "200 guests",
    address: "direccion 210, colonia Condesa",
    latitude: 21.8628063,
    longitude: -102.2805333,
    picture: "https://www.uniquevenues.com/sites/uniquevenues.com/files/UNewHampPTP_BusinessSchool.jpg"
    },

  {
    name: "Super nice Venue",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1494672203374-c593733a6150?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80",
    price_per_hour: 11,
    capacity: "200 guests",
    address: "direccion 666, colonia Condesa",
    latitude: 16.73722,
    longitude: -92.651725,
    picture: "https://hitchedukir.hitched.co.uk/Temp/480_320_thumb_2157445_merrydale-ma-20190123032757199.jpg"
    },

  {
    name: "Really Super Nice Venue",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1494672203374-c593733a6150?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80",
    price_per_hour: 11,
    capacity: "200 guests",
    address: "direccion 9787, colonia Condesa",
    latitude: 32.4847462,
    longitude: -116.9812559,
    picture: "https://assets.simpleviewcms.com/simpleview/image/upload/c_fill,h_360,q_50,w_640/v1/clients/grandrapids/042_3_9075_jpeg_245bf325-e5c6-413e-b15d-422aa8c459ce.jpg"
    },

  {
    name: "Really super amazing Venue",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    picture: "https://images.unsplash.com/photo-1494672203374-c593733a6150?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1951&q=80",
    price_per_hour: 11,
    capacity: "200 guests",
    address: "direccion 210, colonia Condesa",
    latitude: 20.6792516,
    longitude: -103.3774034,
    picture: "https://d1vqbo3pfvy5b5.cloudfront.net/grand-geneva/weddings/box-pavilion-reception.jpg"
    }
]

caterings = [
  {
    name: "Ardente",
    catering_type: "Italian",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    address: "Parque Mexico Condesa"
    },
  {
    name: "Parcela",
    catering_type: "Mexican",
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    address: "Roma Norte"
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

puts 'Creating caterings'

caterings.each do |catering|
  cat = Catering.new(catering)
  user = User.first
  cat.user = user
  cat.save!
  sleep 2.5
end


