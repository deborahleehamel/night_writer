require_relative 'key'

class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end

class NightWriter
  attr_reader :reader

  def initialize
    @reader = FileReader.new
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
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


    # you've taken in an INPUT string
    #Turn plain text into Braille text

#   a. create a hash of letters to make map
#   b. for each plain letter, write braille letter on 3 lines
#   c. support for capitalization
#   d. support numbers
#   e. constrain braille file to 80 characters wide
#
# 4. Write braille text in new text file
# 5. write test files, TDD

end

puts ARGV.inspect
