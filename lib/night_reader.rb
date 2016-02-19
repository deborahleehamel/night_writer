require_relative 'key'
require_relative 'file_io'

class NightReader
  include FileIO

  def initialize
    message = FileIO.read
    convert_file_to_text(message)
  end

 def convert_file_to_text(message)
    text = convert_to_text(message)
    write(text)
    puts "Created #{ARGV[1]} containing #{text.length} characters"
 end

 def convert_to_text(input)
   split_on_newline = input.chomp.split

   all_braille_characters = []
   until split_on_newline.first.length == 0
     split_on_newline.each do |line|
       all_braille_characters << line.slice!(0..1)
     end
   end
   single_string = all_braille_characters.join
   split_braille = single_string.split(//)

   text_output = ""

   until split_braille.empty?
     braille_character = split_braille.slice!(0..5)
     text_output += BRAILLE_TO_TEXT[braille_character]
   end
   text_output
 end

end
