require 'pry'
require_relative './song'

class Artist

    attr_accessor :name, :songs, :artist

    @@count = []

    def initialize(name)
        @name = name
        @songs = []
    end

    def artist
        @name
    end

    def add_song(song)
        @@count << self
        song.artist = self
        self.songs << song
    end

    def add_song_by_name(new_song)
        @@count << self
        song = Song.new(new_song)
        song.artist = self
        self.songs << song
    end

    def self.song_count
        @@count.length
    end
end