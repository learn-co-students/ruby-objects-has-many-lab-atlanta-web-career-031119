require_relative './artist.rb'

class Song
    def initialize(title)
        @name=title
    end
    attr_accessor :name, :artist
    def add_artist(name)
        @artist=name
    end
end