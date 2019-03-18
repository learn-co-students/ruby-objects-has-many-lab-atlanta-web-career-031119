class Artist
    def initialize(name)
        @name=name
        @songs=[]
    end
    attr_accessor :name
    def add_song(song)
        @songs<<song
    end
    def songs
        return @songs
    end
end