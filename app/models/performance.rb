class Performance < ActiveRecord::Base
  belongs_to  :show
  belongs_to  :venue


  def human_readable_date
    date.strftime("%A, %d %b %Y %I:%M %p")
  end

  def search_result(name)
    show_matches = Show.where("name like ?", "%#{name}%")
    venue_matches = Venue.where("name like ?", "%#{name}%")
      binding.pry
    performance_show = show_matches.map {|show| Performance.where(:show_id => show.id) }
    performance_venue = venue_matches.map {|venue| Performance.where(:venue_id => venue.id) }
    ((performance_show + performance_venue).flatten).uniq
  end

end
