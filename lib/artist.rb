class Artist

  attr_accessor :name

   @@count = 0 
  def initialize(name_given)

    @name = name_given
    @songs =[]
    @artist =[]
  end

  def add_song(song)
    #expect(hello.artist).to eq(adele)
    #adele.add_song(hello)
    #@songs = song
    #self is artist
    @songs<<song
    song.artist = self
    @@count +=1 
 end

  def songs


    @songs

  end

  def add_song_by_name(name)
    #adele.add_song_by_name("Rolling in the Deep")
    #expect(adele.songs.last.name).to eq("Rolling in the Deep")
    #expect(adele.songs.last.artist).to eq(adele)
   song = Song.new(name)
     
    song.artist = self
   @songs << song


   @@count +=1 

  end

def self.song_count
   @@count 

end 
end