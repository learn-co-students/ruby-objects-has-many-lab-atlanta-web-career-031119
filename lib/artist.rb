class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new(song)
    add_song(song)
  end

  def self.all
    @@all
  end

  def self.song_count
    count = 0
    for n in 0...@@all.size
      if @@all[n].songs.size > 0
        count += 1
      end
    end
    count
  end

end
