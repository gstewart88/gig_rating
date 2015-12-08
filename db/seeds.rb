
Role.delete_all
['registered', 'banned', 'moderator', 'admin'].each do |role|
  Role.find_or_create_by({name: role})
end

Genre.delete_all
g1=Genre.create!(name: "Action", live_music: false)
g2=Genre.create!(name: "Adventure", live_music: false)
g3=Genre.create!(name: "Comedy", live_music: false)
g4=Genre.create!(name: "Crime", live_music: false)
g5=Genre.create!(name: "Fantasy", live_music: false)
g6=Genre.create!(name: "Historical", live_music: false)
g7=Genre.create!(name: "Historical Fiction", live_music: false)
g8=Genre.create!(name: "Horror", live_music: false)
g9=Genre.create!(name: "Magical Realism", live_music: false)
g10=Genre.create!(name: "Mystery", live_music: false)
g11=Genre.create!(name: "Paranoid", live_music: false)
g12=Genre.create!(name: "Philosophical", live_music: false)
g13=Genre.create!(name: "Political", live_music: false)
g14=Genre.create!(name: "Romance", live_music: false)
g15=Genre.create!(name: "Saga", live_music: false)
g16=Genre.create!(name: "Satire", live_music: false)
g17=Genre.create!(name: "Science Fiction", live_music: false)
g18=Genre.create!(name: "Slice of Life", live_music: false)
g19=Genre.create!(name: "Speculative", live_music: false)
g20=Genre.create!(name: "Thriller", live_music: false)
g21=Genre.create!(name: "Urban", live_music: false)
g22=Genre.create!(name: "Holidays", live_music: true)
g23=Genre.create!(name: "Mood", live_music: true)
g24=Genre.create!(name: "Party", live_music: true)
g25=Genre.create!(name: "Pop", live_music: true)
g26=Genre.create!(name: "Trending", live_music: true)
g27=Genre.create!(name: "Focus", live_music: true)
g28=Genre.create!(name: "Rock", live_music: true)
g29=Genre.create!(name: "Indie", live_music: true)
g30=Genre.create!(name: "Alternative", live_music: true)
g31=Genre.create!(name: "EDM/Dance", live_music: true)
g32=Genre.create!(name: "Chill", live_music: true)
g33=Genre.create!(name: "Dinner", live_music: true)
g34=Genre.create!(name: "Sleep", live_music: true)
g35=Genre.create!(name: "RnB", live_music: true)
g36=Genre.create!(name: "Country", live_music: true)
g37=Genre.create!(name: "Folk", live_music: true)
g38=Genre.create!(name: "Americana", live_music: true)
g39=Genre.create!(name: "Metal", live_music: true)
g40=Genre.create!(name: "Soul", live_music: true)
g41=Genre.create!(name: "Travel", live_music: true)
g42=Genre.create!(name: "Decades", live_music: true)
g43=Genre.create!(name: "Jazz", live_music: true)
g44=Genre.create!(name: "Blues", live_music: true)
g45=Genre.create!(name: "Reggae", live_music: true)
g46=Genre.create!(name: "Latino", live_music: true)
g47=Genre.create!(name: "Punk", live_music: true)
g48=Genre.create!(name: "Funk", live_music: true)
g49=Genre.create!(name: "Romance", live_music: true)
g50=Genre.create!(name: "Classical", live_music: true)
g51=Genre.create!(name: "Comedy", live_music: true)
g52=Genre.create!(name: "Kids", live_music: true)
g53=Genre.create!(name: "Accapella", live_music: true)


Category.delete_all
c1 = Category.create!(name: "Theatre", genre: g18)
c2 = Category.create!(name: "Pantomine", genre: g3)
c3 = Category.create!(name: "Live Music", genre: g52)
c4 = Category.create!(name: "Stand Up", genre: g3)
c5 = Category.create!(name: "Spoken Work", genre: g12)
c6 = Category.create!(name: "Internet", genre: g11)
c7 = Category.create!(name: "Magician", genre: g10)
c8 = Category.create!(name: "Improv", genre: g2)
c9 = Category.create!(name: "One Person", genre: g19)
c10 = Category.create!(name: "Ballet", genre: g7)
c11 = Category.create!(name: "Drama", genre: g14)
c12 = Category.create!(name: "Theatre", genre: g5)



Show.delete_all
s1 = Show.create!(name: "Billy Elliot", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/BillyElliot.jpg")), category: c3)
s2 = Show.create!(name: "Cats", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/Cats.jpg")), category: c10)
s3 = Show.create!(name: "Dirty Dancing", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/DirtyDancing.jpg")), category: c11)
s4 = Show.create!(name: "Les Miserables", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/LesMiserables.jpg")), category: c1)
s5 = Show.create!(name: "Oliver!", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/Oliver!.jpg")), category: c10)
s6 = Show.create!(name: "The Lion King", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/TheLionKing.jpg")), category: c8)
s7 = Show.create!(name: "The Phantom of The Opera", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/ThePhantomofTheOpera.png")), category: c2)
s8 = Show.create!(name: "The Wizard of Oz", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/TheWizardofOz.jpg")), category: c12)
s9 = Show.create!(name: "We Will Rock You", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/WeWillRockYou.jpg")), category: c3)
s10 = Show.create!(name: "Wicked", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/Wicked.jpg")), category: c12)


Venue.delete_all
v1 = Venue.create!(name: 'Glasgow Theatre Royal', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/Royal.jpg")))
v2 = Venue.create!(name: 'Exhibition & Conference Theatre', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/ExhibitionConference.jpg")))
v3 = Venue.create!(name: 'Festival Theatre', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Festival-Outside.JPG")))
v4 = Venue.create!(name: 'The Lyceum', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Lyceum.jpg")))
v5 = Venue.create!(name: 'Edinburgh Playhouse', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Playhouse.jpg")))
v6 = Venue.create!(name: 'Edinburgh Traverse Theatre', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Traverse.jpg")))

Performance.delete_all
# a = DateTime.new(2015,11,20,17,00).strftime(%A, %d %b %Y %I:%M %p)
Performance.create!(show: s1, venue: v1, date: (DateTime.new(2015,12,20,17,00)))
Performance.create!(show: s2, venue: v2, date: (DateTime.new(2015,12,20,17,00)))
Performance.create!(show: s3, venue: v3, date: (DateTime.new(2015,12,20,17,00)))
Performance.create!(show: s4, venue: v4, date: (DateTime.new(2015,12,20,17,00)))
Performance.create!(show: s5, venue: v5, date: (DateTime.new(2015,12,20,17,00)))
Performance.create!(show: s6, venue: v6, date: (DateTime.new(2015,12,21,17,00)))
Performance.create!(show: s7, venue: v1, date: (DateTime.new(2015,12,22,17,00)))
Performance.create!(show: s8, venue: v2, date: (DateTime.new(2015,12,22,17,00)))
Performance.create!(show: s9, venue: v3, date: (DateTime.new(2015,12,22,17,00)))






User.delete_all

User.create!(email: "simon@simon.com", password: "password", role_id: '3')
User.create!(email: "graeme@graeme.com", password: "password", role_id: '1')
User.create!(email: "syed@syed.com", password: "password", role_id: '1')


