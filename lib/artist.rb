class Artist
 attr_accessor :name, :songs, :song
 @@all = []

 def initialize(name)
   @name = name
   @songs = []
   save
end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    @@all.find do |artist|
      if artist.name == artist_name
        artist
      else self.new(artist_name)
      end
    end
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


end
