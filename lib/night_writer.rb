$LOAD_PATH.unshift(File.expand_path("..lib",__dir__))
require_relative 'key'
require_relative 'file_io'

class NightWriter
  include FileIO

  def initialize
    message = FileIO.read
    encode_file_to_braille(message)
  end

  def encode_file_to_braille(message)
    braille = encode_to_braille(message)
    write(braille)
    puts "Created #{ARGV[1]} containing #{message.length} characters"
  end

  def encode_to_braille(input)
    line_1 = []
    line_2 = []
    line_3 = []
    end_output = []

    raw_braille(input).each_slice(40) do |full_line|
      full_line.flatten.each_slice(6) do |slice|
        line_1 << slice[0..1]
        line_2 << slice[2..3]
        line_3 << slice[4..5]
      end
      line = line_1.join + "\n" + line_2.join + "\n" + line_3.join
      end_output << line

      line_1.clear
      line_2.clear
      line_3.clear
    end
    end_output.join("\n")

  end

  def raw_braille(input)
    input.chars.map do |letter|
      ALL_BRAILLE_KEY[letter]
    end
  end

end
