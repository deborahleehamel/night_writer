require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/night_reader'

class NightReaderTest < Minitest::Test

  def test_that_night_reader_class_exists
    assert NightReader
  end

  def test_that_it_can_convert_a_braille_character_to_text
    text_output = NightReader.new.convert_to_text("0.\n..\n..")
    assert_equal text_output, "a"
  end

  def test_that_it_can_convert_two_braille_characters_to_text
    skip
    text_output = NightReader.new.convert_to_text("0.0.\n..0.\n....")
    assert_equal text_output, "ab"
  end


  def test_can_convert_braille_ab_to_text
    skip
   text_output = NightReader.new.convert_to_text("0.0.\n..0.\n....")
   assert_equal text_output, "ab"
  end

  def test_can_encode_A_to_braille
    skip
   text_output = NightReader.new.convert_to_text("..0.\n....\n.0..")
   assert_equal text_output, "A"
  end

  def test_can_convert_braille_AB_to_text
    skip
   text_output = NightReader.new.convert_to_text("..0...0.\n......0.\n.0...0..")
   assert_equal text_output, "AB"
  end

end
