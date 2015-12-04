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

s1 = Show.create!(name: 'Matilda the Musical', genre: gn2, description: d1, gig_image: File.open(File.join(Rails.root,"/public/images/Matilda.jpeg")))











