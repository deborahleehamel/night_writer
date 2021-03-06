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

  def test_that_it_can_convert_a_braille_character_to_text
    text_output = NightReader.new.convert_to_text("0.0.0.0.0....00.0.0.00\n00.00.0..0..00.0000..0\n....0.0.0....00.0.0...")
    assert_equal text_output, "hello world"
  end

  def test_that_it_can_convert_two_braille_characters_to_text
    text_output = NightReader.new.convert_to_text("0.0.\n..0.\n....")
    assert_equal text_output, "ab"
  end

end
