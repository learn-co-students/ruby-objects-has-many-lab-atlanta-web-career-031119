require_relative './song.rb'

class Artist
    def initialize(name)
        @name = name
        @songs = []
    end
    attr_accessor :name
    def add_song(track)
        @songs << track
        track.artist = self
    end
    def add_song_by_name(track)
        Song.new = track
        add_song(track)
    end
    def songs
        return @songs
    end
end