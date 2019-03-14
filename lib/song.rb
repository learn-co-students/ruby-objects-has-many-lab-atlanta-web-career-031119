require_relative './artist'
require 'pry'

class Song

    attr_accessor :song, :artist, :name

    @@all = []

    def initialize(song)
        @@all<<self
        @name=song
        @artist = nil
    end

    def self.all
        @@all
    end

    def artist_name
        song = self
        if song.artist==nil
            nil
        else
        self.artist.name
        end
    end
end