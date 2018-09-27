class MP3Importer
  attr_accessor :file_path

  def initialize(file_path)
    @path = path
  end

  def files
    Dir.entries(path).reject {|f| f == '.' || f == '- -'}
  end

  def import
    files.each {|f| Song.new_by_filename(f)}
  end

end
