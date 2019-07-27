require_relative './artist.rb'

class Song
    @@all=[]
    def initialize(title)
        @name=title
        @@all<<self
    end
    attr_accessor :name, :artist
    def add_artist(name)
        @artist=name
    end
    def self.all
        return @@all
    end
    def artist_name
        self.artist ? self.artist.name : nil
    end
end