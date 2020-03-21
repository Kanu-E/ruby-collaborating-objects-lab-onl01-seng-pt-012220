class Song
 attr_accessor :name, :artist
 @@all = []
 def initialize (name)
  @name = name
  @@all << self
 end
 
 def self.all 
  @@all
 end
 
 def self.new_by_filename(file_name)
  name = file_name.split(" - ")[1]
   self.new(name)
 end
 
end