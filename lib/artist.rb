require_relative './song.rb'

class Artist
    def initialize(name)
        @name=name
        @songs=[]
    end
    attr_accessor :name
    def add_song(track)
        @songs<<track
        track.artist=self
    end
    def add_song_by_name(track)
        track=Song.new(track)
        add_song(track)
    end
    def self.song_count
        @song_total=0
        return self.each {|artist| @song_total+=artist.song.length}
        return @song_total
    end
    def songs
        return @songs
    end
end