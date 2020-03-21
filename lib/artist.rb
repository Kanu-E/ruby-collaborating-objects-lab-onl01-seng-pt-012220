class Artist
  attr_accessor :name, :songs
    
    @@all = []
    
  def initialize (name)
    @name = name
    @@all << self
    @songs = []
  end 
  
  def self.all
    @@all 
  end  
  
  def add_song (song)
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    @@all.find do |artist| artist.name == name 
   end  
   if artist == nil
     artist self.new(name)
     @@all << artist
   else
   artist
   end
  end
  
  def print_songs
   puts @songs.collect {|song| song.name}
  end
  
end