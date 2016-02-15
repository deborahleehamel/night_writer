require 'minitest/autorun'
require 'minitest/pride'
require 'night_writer'

class NightWriterTest < Minitest::Test
  attr_reader :file_in, :file_out

  @file_in = ARBV[0] || "message.txt"
  @file_out = ARGV[1] || "braille.txt"

  def test_if_can_translate_a_to_braille
    translated = NightWriter.new(file_in, file_out)
    a = translated.encode_to_braille("a")
    assert_equal a, "O.\n..0.\n...."
  end

  def test_if_can_decode_braille_a_to_plain_a
    decoded = NightWriter.new(file_in, file_out)
    a = decoded.encode_to_plain("O.\n..0.\n....")
    assert equal a, "a"
  end

end
