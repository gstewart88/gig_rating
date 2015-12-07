# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.delete_all
['registered', 'banned', 'moderator', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end



Venue.delete_all
Venue.create!(name: 'Glasgow Theatre Royal', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/Royal.jpg")))
Venue.create!(name: 'Exhibition & Conference Theatre', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/ExhibitionConference.jpg")))
Venue.create!(name: 'Festival Theatre', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Festival-Outside.JPG")))
Venue.create!(name: 'The Lyceum', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Lyceum.jpg")))
Venue.create!(name: 'Edinburgh Playhouse', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Playhouse.jpg")))
Venue.create!(name: 'Edinburgh Traverse Theatre', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Traverse.jpg")))

# Show.delete_all
# Show.create!(name: 'Matilda the Musical', genre: gn2, description: d1, gig_image: File.open(File.join(Rails.root,"/public/images/Matilda.jpeg")))

Genre.delete_all
Genre.delete_all
Genre.create!(name: "Action", live_music: false)
Genre.create!(name: "Adventure", live_music: false)
Genre.create!(name: "Comedy", live_music: false)
Genre.create!(name: "Crime", live_music: false)
Genre.create!(name: "Fantasy", live_music: false)
Genre.create!(name: "Historical", live_music: false)
Genre.create!(name: "Historical Fiction", live_music: false)
Genre.create!(name: "Horror", live_music: false)
Genre.create!(name: "Magical Realism", live_music: false)
Genre.create!(name: "Mystery", live_music: false)
Genre.create!(name: "Paranoid", live_music: false)
Genre.create!(name: "Philosophical", live_music: false)
Genre.create!(name: "Political", live_music: false)
Genre.create!(name: "Romance", live_music: false)
Genre.create!(name: "Sada", live_music: false)
Genre.create!(name: "Satire", live_music: false)
Genre.create!(name: "Science Fiction", live_music: false)
Genre.create!(name: "Slice of Life", live_music: false)
Genre.create!(name: "Speculative", live_music: false)
Genre.create!(name: "Thriller", live_music: false)
Genre.create!(name: "Urban", live_music: false)
Genre.create!(name: "Holidays", live_music: true)
Genre.create!(name: "Mood", live_music: true)
Genre.create!(name: "Party", live_music: true)
Genre.create!(name: "Pop", live_music: true)
Genre.create!(name: "Trending", live_music: true)
Genre.create!(name: "Focus", live_music: true)
Genre.create!(name: "Rock", live_music: true)
Genre.create!(name: "Indie", live_music: true)
Genre.create!(name: "Alternative", live_music: true)
Genre.create!(name: "EDM/Dance", live_music: true)
Genre.create!(name: "Chill", live_music: true)
Genre.create!(name: "Dinner", live_music: true)
Genre.create!(name: "Sleep", live_music: true)
Genre.create!(name: "RnB", live_music: true)
Genre.create!(name: "Country", live_music: true)
Genre.create!(name: "Folk", live_music: true)
Genre.create!(name: "Americana", live_music: true)
Genre.create!(name: "Metal", live_music: true)
Genre.create!(name: "Soul", live_music: true)
Genre.create!(name: "Travel", live_music: true)
Genre.create!(name: "Decades", live_music: true)
Genre.create!(name: "Jazz", live_music: true)
Genre.create!(name: "Blues", live_music: true)
Genre.create!(name: "Reggae", live_music: true)
Genre.create!(name: "Latino", live_music: true)
Genre.create!(name: "Punk", live_music: true)
Genre.create!(name: "Funk", live_music: true)
Genre.create!(name: "Romance", live_music: true)
Genre.create!(name: "Classical", live_music: true)
Genre.create!(name: "Comedy", live_music: true)
Genre.create!(name: "Kids", live_music: true)
Genre.create!(name: "Accapella", live_music: true)

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
Category.create!(name: "Ballet")

Show.delete_all
Show.create!(name: "Billy Elliot", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/BillyElliot.jpg")))
Show.create!(name: "Cats", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/Cats.jpg")))
Show.create!(name: "Dirty Dancing", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/DirtyDancing.jpg")))
Show.create!(name: "Les Miserables", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/LesMiserables.jpg")))
Show.create!(name: "Oliver!", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/Oliver!.jpg")))
Show.create!(name: "The Lion King", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/TheLionKing.jpg")))
Show.create!(name: "The Phantom of The Opera", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/ThePhantomofTheOpera.png")))
Show.create!(name: "The Wizard of Oz", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/TheWizardofOz.jpg")))
Show.create!(name: "We Will Rock You", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/WeWillRockYou.jpg")))
Show.create!(name: "Wicked", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/Wicked.jpg")))


User.delete_all

User.create!(email: "simon@simon.com", password: "password", role_id: '3')
User.create!(email: "graeme@graeme.com", password: "password", role_id: '1')
User.create!(email: "syed@syed.com", password: "password", role_id: '1')


