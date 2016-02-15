require 'key'

class FileReadWriter

  # file = File.open(ARGV[1], "w")
  #
  # translate = NightWriter.new
  #
  # translate.convert_to_braille(read)
  #
  # file.close

  def read
    filename = ARGV[0]
    content = File.read(filename)
    puts "Created #{ARGV[1]} containing #{content.length} characters"
  end

  def write(text)
    File.open(ARGV[1], 'w') { |f| f.puts text }
  #   output_file = File.open(ARGV[1], 'a')
  #   output_file.write(text)
  end

end
