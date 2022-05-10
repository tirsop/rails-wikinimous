# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning the DB...."
Article.destroy_all

puts "Creating instances of pets"
10.times do
  p Article.create!(
    title: Faker::CryptoCoin.coin_name, 
    content: Faker::Quote.famous_last_words)
  puts
end

puts "...created #{Article.count} articles."