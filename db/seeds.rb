# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3,
  picture_url: 'https://images.unsplash.com/photo-1558869632-279458ac1734?q=80&w=2938&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Flat.create!(
  name: 'Stylish House in Trendy East London',
  address: '27 Shoreditch High St London E1 6PG',
  description: 'A beautiful loft-style house with exposed brick and a roof terrace overlooking the city.',
  price_per_night: 150,
  number_of_guests: 2,
  picture_url: 'https://images.unsplash.com/photo-1698877036155-dd730fc2ca5b?q=80&w=3131&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Flat.create!(
  name: 'St Pancras Clock Tower Guest Suite',
  address: 'Euston Rd London N1C 4QP',
  description: 'A mini apartment within the clock tower apartment at St Pancras Station with its own kitchen, bathroom and seating area.',
  price_per_night: 110,
  number_of_guests: 2,
  picture_url: 'https://images.unsplash.com/photo-1698879837900-9dd9c4c2db80?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

Flat.create!(
  name: 'Modern Apartment with River View',
  address: '50 Thames Path London SE1 7PB',
  description: 'Floor to ceiling windows overlooking the Thames. Very modern, close to all the best restaurants.',
  price_per_night: 200,
  number_of_guests: 4,
  picture_url: 'https://plus.unsplash.com/premium_photo-1723669629708-0de9b27820b5?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
)

puts "Finished! Created #{Flat.count} flats."
