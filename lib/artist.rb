require_relative './song.rb'
require 'pry'

class Artist
    def initialize(name)
        @name=name
    end
    attr_accessor :name
    def add_song(name)
        name.artist=self
    end
    def add_song_by_name(name)
        track=Song.new(name)
        add_song(track)
    end
    def self.song_count
        return Song.all.length
    end
    def songs
        Song.all.select {|s| s.artist==self}
    end
end