require 'key'

class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReadWriter.new
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

  # def runner
  #   output = File.new(ARGV[1], "w+")
  #   output.write(decode)
  #   output.close
  # end

  # puts ARGV.inspect
  # outputa = NightWriter.new
  # outputa.runner

  if __FILE__ == $0
    nw = NightWriter.new(ARGV[0] || "message.txt", ARGV[1] || "braille.txt")
    nw.encode_file_to_braille

  # puts "Created '#{ARGV[1]}' containing #{File.read(ARGV[0]).length} characters.""
