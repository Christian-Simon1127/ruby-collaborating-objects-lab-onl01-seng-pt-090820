class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def artist=(artist) 
    @artist = artist 
    self.artist.songs << self
  end 
  
  def self.new_by_filename(file_name)
    files = file_name.split(" - ")
    name = files[1]
    name = Song.new(name)
  end
  
  def artist_name=(artist_name)
    if @artist == nil 
      @artist = Artist.new(artist_name)
    else
      self.artist.name
    end
  end 
  
end