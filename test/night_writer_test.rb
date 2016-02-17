require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/night_writer'

class NightWriterTest < Minitest::Test
  # attr_reader :file_in, :file_out
  #
  # @file_in = ARBV[0] || "message.txt"
  # @file_out = ARGV[1] || "braille.txt"
  #
  # def test_if_can_translate_a_to_braille
  #   translated = NightWriter.new(file_in, file_out)
  #   a = translated.encode_to_braille("a")
  #   assert_equal a, "O.\n..\n.."
  # end
  #
  # def test_if_can_decode_braille_a_to_plain_a
  #   decoded = NightWriter.new(file_in, file_out)
  #   a = decoded.encode_to_plain("O.\n..\n..")
  #   assert equal a, "a"
  # end

  def test_that_night_writer_class_exists
  assert  NightWriter.new
  end

  def test_can_encode_a_to_braille
   braille_output = NightWriter.new.encode_to_braille("a")
   assert_equal braille_output, "0.\n..\n.."
  end

  def test_can_encode_ab_to_braille
   braille_output = NightWriter.new.encode_to_braille("ab")
   assert_equal braille_output, "0.0.\n..0.\n...."
  end

  def test_can_encode_A_to_braille
   braille_output = NightWriter.new.encode_to_braille("A")
   assert_equal braille_output, "..0.\n....\n.0.."
  end

  def test_can_encode_AB_to_braille
   braille_output = NightWriter.new.encode_to_braille("AB")
   assert_equal braille_output, "..0...0.\n......0.\n.0...0.."
  end

  def test_can_encode_eighty_for_a_to_braille
   braille_output = NightWriter.new.encode_to_braille("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
   expected_output = "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.
................................................................................
................................................................................
0.
..
.."
   assert_equal braille_output, expected_output
  end

  def test_can_encode_eighty_for_A_caps_to_braille
   braille_output = NightWriter.new.encode_to_braille("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
   expected_output ="0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.
................................................................................
................................................................................
0.
..
.."

   assert_equal braille_output, expected_output
  end

  def test_can_encode_space_to_braille
    braille_output = NightWriter.new.encode_to_braille(" ")
    expected_output = "..
..
.."

     assert_equal braille_output, expected_output
    end

  def test_can_encode_all_char_snippet_to_braille
    skip
   braille_output = NightWriter.new.encode_to_braille(" !")
   expected_output = "....
..00
..0."

   assert_equal braille_output, expected_output
  end

  def test_can_encode_all_character_string_to_braille
    skip
   braille_output = NightWriter.new.encode_to_braille(" !',-.?abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
   expected_output = "..............0.0.00000.00000..0.00.0.00000.00000..0.00.0..000000...0...0...00..
..00..0...000...0....0.00.00000.00..0....0.00.00000.00..0.00...0.0......0.......
..0.0...00.000....................0.0.0.0.0.0.0.0.0.0.0000.0000000.0...0...0...0
00..0...00..00..0....0...0..0...0...00..00..0...00..00..0....0...0..0...0....0..
.0...0..0...00..00..0...00......0........0...0..0...00..00..0...00......0...00..
...0...0...0...0...0...0...00..00..00..00..00..00..00..00..00..00..000.000.0.0.0
00..00..0.
.....0...0
00.000.000"
   assert_equal braille_output, expected_output
  end


end
