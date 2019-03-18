require_relative './artist.rb'

class Song
    @@all_songs=[]
    def initialize(title)
        @name=title
        @@all_songs<<self
    end
    attr_accessor :name, :artist
    def add_artist(name)
        @artist=name
    end
    def self.all
        return @@all_songs
    end
end