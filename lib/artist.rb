class Artist
  attr_accessor :name, :artist, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
#    @artist = artist
#    @song = song
  end

#  def artist
#    @artist
#  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
artist = @@all.detect{|artist| artist ==name}
    if
    else
      artist = self.new(name)
    end
  end

  def print_songs
  end

end
