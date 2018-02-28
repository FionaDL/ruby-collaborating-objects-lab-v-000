require 'pry'

class MP3Importer

    attr_reader :path

   def initialize(path)
     @path = path
   end

   def files
     @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }
   end
     end
   end

   def import
     files.each do |file_name|
       Song.new_by_filename(file_name)
    end
  end

end
