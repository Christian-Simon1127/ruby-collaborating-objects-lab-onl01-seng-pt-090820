class MP3Importer
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    music = Dir.entries("spec/fixtures/mp3s/")
    puts music
  end
  
  
  
  
end