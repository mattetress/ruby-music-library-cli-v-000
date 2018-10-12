class MusicImporter
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    file_list = Dir["#{path}/*.mp3"]
    filenames = []
    file_list.each do |file|
      parts = file.split("/")
      filenames << parts[parts.last]
    end
    filenames
  end

  def import
    self.files.each do |filename|
      Song.create_from_filename(filename)
    end
  end
end
