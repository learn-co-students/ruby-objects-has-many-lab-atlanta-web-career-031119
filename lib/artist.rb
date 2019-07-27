require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@all_songs = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@all_songs +=1
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @songs << song
    @@all_songs +=1
  end

  def self.song_count
    @@all_songs

  end

end
