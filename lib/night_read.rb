$LOAD_PATH.unshift(File.expand_path("..lib",__dir__))
require 'file_reader'

class NightReader

  def initialize
    @reader = FileReader.new
  end

  def convert_output(output_array)
    output = ""
    output.each { |n| output << n }
    @reader.writes(output)
    puts "Created #{ARGV[1]} containing #{output.length} characters."
  end


end
