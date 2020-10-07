class MP3Importer
  attr_accessor :path
  
  def initialize(file_path)
    @path = file_path
  end
  
  def files
    all_files = @path.split("/")
    file_name = all_files[-1]
  end
  
  
  
  
end