class MusicLibraryController

  def initialize(path = "./db/mp3s")
    @filepath = path
    importer = MusicImporter.new(@filepath)
    importer.import
  end

  

end
