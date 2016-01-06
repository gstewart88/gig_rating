
Role.delete_all
['registered', 'banned', 'moderator', 'admin'].each do |role|
  Role.create!(name: role)
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
g49=Genre.create!(name: "Rap", live_music: true)
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
c13 = Category.create!(name: "Live Music", genre: g28)
c14 = Category.create!(name: "Live Music", genre: g47)
c15 = Category.create!(name: "Live Music", genre: g25)
c16 = Category.create!(name: "Live Music", genre: g49)
c17 = Category.create!(name: "Live Music", genre: g29)



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
s10 = Show.create!(name: "Kanye West", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/KanyeWest.jpg")), category: c16)
s11 = Show.create!(name: "Linkin Park", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/LinkinPark.jpg")), category: c13)
s12 = Show.create!(name: "Taylor Swift", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/TaylorSwift.jpg")), category: c15)
s13 = Show.create!(name: "Ellie Goulding", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/EllieGoulding.jpg")), category: c15)
s14 = Show.create!(name: "Weezer", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/Weezer.jpg")), category: c17)
s15 = Show.create!(name: "Foo Fighters", show_img: File.open(File.join(Rails.root,"/public/WeView/Shows/FooFighters.jpg")), category: c13)


Venue.delete_all
v1 = Venue.create!(name: 'Glasgow Theatre Royal', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/Royal.jpg")))
v2 = Venue.create!(name: 'Exhibition & Conference Theatre', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/ExhibitionConference.jpg")))
v3 = Venue.create!(name: 'Festival Theatre', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Festival-Outside.JPG")))
v4 = Venue.create!(name: 'The Lyceum', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Lyceum.jpg")))
v5 = Venue.create!(name: 'Edinburgh Playhouse', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Playhouse.jpg")))
v6 = Venue.create!(name: 'Edinburgh Traverse Theatre', location: 'Edinburgh', venue_img: File.open(File.join(Rails.root,"/public/WeView/EdinburghTheatres/Traverse.jpg")))
v7 = Venue.create!(name: 'The SSE Hydro', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/hydro.jpg")))
v8 = Venue.create!(name: 'Barrowland Ballroom', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/barrowland.jpg")))
v9 = Venue.create!(name: 'King Tuts Wah Wah Hut', location: 'Glasgow', venue_img: File.open(File.join(Rails.root,"/public/WeView/GlasgowTheatres/kingtuts.jpg")))


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
Performance.create!(show: s13, venue: v5, date: (DateTime.new(2015,12,22,17,00)))
Performance.create!(show: s13, venue: v7, date: (DateTime.new(2015,12,22,17,00)))


User.delete_all

u1 = User.create!(email: "simon@simon.com", username:"osborne1992", password: "password", role: Role.find_by(name: 'admin'), ranking: "7", user_image: File.open(File.join(Rails.root,"/public/site_images/Blue.jpg")))
u2 = User.create!(email: "graeme@graeme.com", username:"graemes88", password: "password", role: Role.find_by(name: 'registered'), ranking: "4")
u3 = User.create!(email: "syed@syed.com", username:"infinite_syed", password: "password", role: Role.find_by(name: 'registered'), ranking: "5", user_image: File.open(File.join(Rails.root,"/public/site_images/syed.jpeg")))


ShowReview.delete_all

ShowReview.create!(title: "Dave Grohl headbangs atop a custom mechanised throne", show: s15, description: "In a year of well-publicised stage accidents, from Florence Welch’s foot injury to the Edge’s walk off the edge, Dave Grohl’s leg break in Gothenburg has had the most serious consequences, among which rescheduling several European stadium dates wasn’t even the worst. Unable to atone for cancelling their headline slot at Glastonbury, at least until next year, the Foo Fighters tonight turn their attentions to making it up to patient fans in Edinburgh, whose compensation is a furious and amusingly odd collector’s item of a show.", rating: "5", user: u1)
ShowReview.create!(title: "Ellie Goulding is a beast", show: s13, description: "Ellie Goulding has come a very long way from her acoustic strumming and trilling Herefordshire origins. In a skin-toned body suit and with a giant mane of blonde hair extensions cascading over black shaggy epaulettes, she bestrode the O2 Arena stage like a sci-fi warrior as digital interstellar explosions erupted on screens amid thunderous blasts of synthetic sound. All hail Barbarellie, queen of galactic pop.", rating: "5", user: u2)
ShowReview.create!(title: "Valjean. At last. We see each other plain", show: s4, description: "If I could, I would get this entire show tattooed on my retinas", rating: "5", user: u2)
ShowReview.create!(title: "We will rock you...they certainly do!", show: s9, description: "Great night out, really enjoyed this musical, I think maybe you need to be a Queen fan (which I am) to thoroughly enjoy it.
The staging is quite minimal in the first half with the visuals mostly by the cast rather than the setting, good use of technology throughout, very powerful voices and lots of energy, we both enjoyed the second half more.
Everyone was good but I really enjoyed the performances by Scaramouche, the Killer Queens No1 man (sorry name escapes me) and Pop. Our show had three understudies in situ but I can't remember who they were and it didn't matter to me! Check before hand if you are going for a particular performer.
The Killer Queen had a strong voice but personally I didn't resonate with her character.", rating: "4", user: u3)

VenueReview.delete_all

VenueReview.create!(title: "Lovely Theatre", venue: v1, description: "We came here to see Mathew Bourne's Sleeping Beauty Ballet. First time in this theatre, very nice all round. Clean and decor is in keeping with the Theatre. I don't like how you get your wine or drinks served out of plastic cups at the bar.", user: u3, accessibility: "4", acoustics: "3", cleanliness: "5", lighting: "4", location: "4", parking: "2", seating: "2")
VenueReview.create!(title: "Nice place", venue: v5, description: "Everything was so easy from the ordering of the tickets, picking them up at the box office and getting to our seats. A few glass bottles of beer were allowed in which was surprising although our drinks were in plastic glasses. ", user: u1, accessibility: "4", acoustics: "3", cleanliness: "2", lighting: "5", location: "4", parking: "3", seating: "2")
VenueReview.create!(title: "Lovely theatre, touch of vertigo", venue: v4, description: "This is a beautiful theatre with comfy seats and a lovely chandelier. My problem was going for the cheaper seats in the Upper Circle. It was pretty high up and I felt a bit dizzy whilst walking to my seat. I won't be so mean next time and will go for seats further down.", user: u2, accessibility: "2", acoustics: "4", cleanliness: "4", lighting: "3", location: "4", parking: "2", seating: "1")






