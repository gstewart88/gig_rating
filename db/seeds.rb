# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
['registered', 'banned', 'moderator', 'admin'].each do |role|
  Role.find_or_create_by({name: role})



Venue.delete_all
Venue.create!(name: 'Glasgow Theatre Royal', location: 'Glasgow, Bath Street')
Venue.create!(name: 'Manchester Theatre Royal', location: 'Manchester, Rigg Street')
Venue.create!(name: 'Edinburgh Theatre Royal', location: 'Edinburgh, Mayor Street')

Show.delete_all
Show.create!(name: 'Matilda the Musical', genre: gn2, description: d1, gig_image: File.open(File.join(Rails.root,"/public/images/Matilda.jpeg")))

Genre.delete_all
Genre.create!(name: "Action")
Genre.create!(name: "Adventure")
Genre.create!(name: "Comedy")
Genre.create!(name: "Crime")
Genre.create!(name: "Fantasy")
Genre.create!(name: "Historical")
Genre.create!(name: "Historical Fiction")
Genre.create!(name: "Horror")
Genre.create!(name: "Magical Realism")
Genre.create!(name: "Mystery")
Genre.create!(name: "Paranoid")
Genre.create!(name: "Philosophical")
Genre.create!(name: "Political")
Genre.create!(name: "Romance")
Genre.create!(name: "Saga")
Genre.create!(name: "Satire")
Genre.create!(name: "Science Fiction")
Genre.create!(name: "Slice of Life")
Genre.create!(name: "Speculative")
Genre.create!(name: "Thriller")
Genre.create!(name: "Urban")

Category.delete_all
Category.create!(name: "Theatre")
Category.create!(name: "Pantomine")
Category.create!(name: "Live Music")
Category.create!(name: "Stand Up")
Category.create!(name: "Spoken Work")
Category.create!(name: "Internet")
Category.create!(name: "Magician")
Category.create!(name: "Improv")
Category.create!(name: "One Person")




