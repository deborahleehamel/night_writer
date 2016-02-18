require_relative 'key'
require_relative 'file_io'

class NightReader
  include FileIO

  def initialize
    message = FileIO.read
    convert_file_to_text(message)
  end

  def convert_output(output_array)
    output = ""
    output.each { |n| output << n }
    @reader.writes(output)
    puts "Created #{ARGV[1]} containing #{output.length} characters."
  end


end
