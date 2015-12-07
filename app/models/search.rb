class Search < ActiveRecord::Base

  def self.search_result(name)
    show_matches = Show.where("name like ?", "%#{"name"}%")
    venue_matches = Venue.where("name like ?", "%#{"name"}%")
    performance_show = Performance.where(:show_id => show_matches.id)
    performance_venue = Performance.where(:venue_id => venue_matches.id)
    performance_show + performance_venue
    
    # results.uniq
  end

end