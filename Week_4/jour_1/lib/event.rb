require 'pry'
require 'time'

class Event
  attr_accessor :start, :duration, :title, :attendees
  @@event = []

  def initialize(start, duration, title, attendees) #Init Event
    @start = Time.parse(start)
    @duration = duration.to_i
    @title = title
    @attendees = attendees
    @@event << self
  end

  def postpone_24h # Evenement de depart + 24h pour un report de 1jour
    @start = @start + 24*60*60 # 24h * 60mn * 60 sc
  end

  def end_date # Evenement de depart + le temps de l'event
    return @start + duration * 60 # *60 pour transformer le integere (seconde de base) en minute
  end

  def is_past? # evenement passé ?
    @start < Time.now
  end

  def is_future? #evenement dans le futur ?
    !self.is_past?
  end

  def is_soon? #depart dans moins de 30mn ?
    @start < Time.now + 60 * 30 # 60sc * 30mn
  end

  def to_s
    puts "Titre : #{@title}"
    puts "Date de début : #{@start}"
    puts "Durée : #{@duration}mn"
    print "Invités : "
    puts @attendees.join(", ")
  end

  def self.all
    @@event
  end

  def self.get_daily_events (date)
		return @@event.select{|events| events.start.to_date === date.to_date}
	end

end
