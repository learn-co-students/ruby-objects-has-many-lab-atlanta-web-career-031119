class Artist
    def initialize(name)
        @name=name
        @songs=[]
    end
    attr_accessor :name
    def add_song(track)
        @songs<<track
        song.name
    end
    def songs
        return @songs
    end
end