class Song
    def initialize(title)
        @title=title
    end
    attr_accessor :title, :artist
    def add_artist(name)
        @artist=name
    end
end