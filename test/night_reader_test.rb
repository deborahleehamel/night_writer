require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/night_reader'

class NightReaderTest < Minitest::Test


  def test_can_convert_braille_a_to_text
    skip
   braille_output = NightReader.new.convert_to_text("0.\n..\n..")
   assert_equal text_output, "a"
  end

  def test_can_convert_braille_ab_to_text
    skip
   braille_output = NightReader.new.encode_to_braille("0.0.\n..0.\n....")
   assert_equal braille_output, "ab"
  end

  def test_can_encode_A_to_braille
    skip
   braille_output = NightReader.new.encode_to_braille("..0.\n....\n.0..")
   assert_equal text_output, "A"
  end

  def test_can_convert_braille_AB_to_text
    skip
   braille_output = NightReader.new.encode_to_braille("..0...0.\n......0.\n.0...0..")
   assert_equal text_output, "AB"
  end

end
