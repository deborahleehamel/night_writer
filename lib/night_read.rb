$LOAD_PATH.unshift(File.expand_path("..lib",__dir__))
require 'file_readwriter'

class NightReader

  def initialize
    @reader = FileReadWriter.new
  end

  def convert_output(output_array)
    output = ""
    output.each { |n| output << n }
    @reader.writes(output)
    puts "Created #{ARGV[1]} containing #{output.length} characters."
  end


end
