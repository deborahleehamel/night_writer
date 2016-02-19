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
    # total_characters = 0
    end_output = []

  # raw_braille(input).map_to_index |chars, index|
  # total_characters += chars.length
  # if total_characters > 80
# my lines <<


  # else
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

  # def prep_braille(input)
  #   braille = []
  #   raw_braille(input).each do |letter|
  #     if ("A".."Z").include?(letter)  #then its capital...
  #     # if letter.first.class == Array
  #       # letter.each do |shift|
  #       braille << shift
  #       end
  #     else
  #       braille << letter
  #     end
  #   end
  #   braille
  # end


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

# puts ARGV.inspect
