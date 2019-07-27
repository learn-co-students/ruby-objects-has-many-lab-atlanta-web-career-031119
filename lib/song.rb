class Song
  @@all = []
  attr_accessor :name, :artist

  def initialize(songtitle)
    
    @name = songtitle
    @@all <<  self

  end
  def self.all
    @@all
  end


  def artist_name

  if self.artist != nil 
    
    self.artist.name 
    
  else 
    
    nil 
    
  end 
  
 end 

end


# describe '#artist_name' do
#     it 'knows the name of its artist' do
#       drake = Artist.new('Drake')
#       song.artist = drake
#       expect(song.artist_name).to eq('Drake')
#     end