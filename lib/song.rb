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
    art_name = files[0]
    temp_artist = Artist.new(art_name)
    song = Song.new(name)
    song.artist = Artist.find_or_create_by_name(art_name)
    song
  end
  
  def artist_name=(artist_name)
    Artist.all.each { |name|
      if name = artist_name
        @artist = name 
      end
    }
    if @artist = nil 
      @artist = Artist.new(artist_name)
    end
    
  end 
  
end