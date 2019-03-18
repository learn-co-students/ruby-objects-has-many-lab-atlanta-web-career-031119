class Artist
    def initialize
        @songs=[]
    end
    attr_accessor :name
    def add_song
        @songs<<self
        self.add_artist
    end
    def songs
        return @songs
    end
end