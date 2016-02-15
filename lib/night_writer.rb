require 'key'

class FileReader

  # file = File.open(ARGV[1], "w")
  #
  # translate = NightWriter.new
  #
  # translate.convert_to_braille(read)
  #
  # file.close

  def read
    filename = ARGV[0]
    File.read(filename)
  end

  # def writes(text)
  #   output_file = File.open(ARGV[1], 'a')
  #   output_file.write(text)
  # end

end

class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReader.new
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to braille(plain)
  end

  def encode_to_braille(input)
    # you've taken in an INPUT string
    # do the magic
    # send out an OUTPUT string
  end

  # def decoder(key)
  #   DECODER_KEY
  # end

  # def decode
  #   @reader.read.chars.map { |n| }
  # end

  def runner
    output = File.new(ARGV[1], "w+")
    output.write(decode)
    output.close
  end

  # puts ARGV.inspect
  outputa = NightWriter.new
  outputa.runner

  puts "Created '#{ARGV[1]}' containing #{File.read(ARGV[0]).length} characters.""
