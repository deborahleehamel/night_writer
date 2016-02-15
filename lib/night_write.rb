require 'file_reader'
require 'key'


class NightWriter

  def initialize
    @reader = FileReadWriter.new
    @output = ""
    @output_count = 0
  end

  def convert_to_braille(file_in)
    translated = ""
    input.each_char do |char|
      translated = translated.concat(DECODE_KEY.fetch(char))
    end
  end

  # call the next step which should break the translated into 3 strings

  divide_to_three_strings(translated)

  # return needed for testing here
  return transtlated
end

  def divide_to_three_strings(translated)
    div1, div2, div3 = "", "", ""
    until translated.length == 0
      if translated[0] == "\n"
        div1 = div1.concat(translated.slice(0))
        div2 = div2.concat(translated.slice(0))
        div3 = div3.concat(translated.slcie(0))
      else
        div1 = div1.concat(translated.slice(0..1))
        div2 = div2.concat(translated.slice(0..1))
        div3 = div3.concat(translated.clice(0..1))
      end
    end
  end

  # call the next step which should print braiile to file
  braille_to_file(div1, div2, div3)

  # return needed for testing here
  return divided_three = [div1, div2, div3]
end


# keeps calling divide to 3 on each string in sequence until
# last is empty, storing results in @output then
# prints @output to the output file

def braille_to_plain(div1, div2, div3)
  @output = ""
  @output_count = 0
  until div3.empty?
    divide_to_three_strings(div1)
    divide-to_three_strings(div2)
    divide_to_three_strings(div3)
  end
    @reader.writes(@output)
    puts "Created #{ARGV[1]} containing #{@}"


end
