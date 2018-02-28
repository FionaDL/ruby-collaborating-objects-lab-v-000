require 'pry'

class MP3Importer

    attr_reader :path

   def initialize(path)
     @path = path
   end

   def files
    Dir.glob("#{@path}/*.mp3").map do |files|
       files.split("/").last
     end
   end

   def import
     @path.files.each do |file_name|
       Song.new_by_filename(file_name)
    end
  end

end
