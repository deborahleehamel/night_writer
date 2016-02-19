require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/night_writer'

class NightWriterTest < Minitest::Test

  def test_that_night_writer_class_exists
    nw = NightWriter.new
    assert_equal nw.class, NightWriter
  end

  def test_can_encode_a_to_braille
   braille_output = NightWriter.new.encode_to_braille("a")
   assert_equal braille_output, "0.\n..\n.."
  end

  def test_can_encode_ab_to_braille
   braille_output = NightWriter.new.encode_to_braille("ab")
   assert_equal braille_output, "0.0.\n..0.\n...."
  end

  def test_can_encode_lowercase_message_to_braille
   braille_output = NightWriter.new.encode_to_braille("hello world")
   assert_equal braille_output, "0.0.0.0.0....00.0.0.00
00.00.0..0..00.0000..0
....0.0.0....00.0.0..."
  end

  def test_can_encode_A_to_braille
   braille_output = NightWriter.new.encode_to_braille("A")
   assert_equal braille_output, "..0.\n....\n.0.."
  end

  def test_can_encode_AB_to_braille
   braille_output = NightWriter.new.encode_to_braille("AB")
   assert_equal braille_output, "..0...0.\n......0.\n.0...0.."
  end

  def test_can_encode_word_with_first_cap_to_braille
   braille_output = NightWriter.new.encode_to_braille("Hello Deborah")
   assert_equal braille_output, "..0.0.0.0.0.....000.0.0.0.0.0.
..00.00.0..0.....0.00..000..00
.0....0.0.0....0......0.0....."
  end

  def test_can_encode_word_with_multiple_upcase_to_braille
   braille_output = NightWriter.new.encode_to_braille("heLLo deBoRah")
   assert_equal braille_output, "0.0...0...0.0...000...0.0...0.0.0.
00.0..0...0..0...0.0..0..0..00..00
.....00..00.0........0..0..00....."
  end

  def test_can_encode_number_to_braille
   braille_output = NightWriter.new.encode_to_braille("7")
   assert_equal braille_output, ".000
.000
00.."
  end

  def test_can_encode_triple_digit_number_to_braille
   braille_output = NightWriter.new.encode_to_braille("869")
   assert_equal braille_output, ".00..000.0.0
.000.00..00.
00..00..00.."
  end

  def test_can_encode_lowercase_letters_and_joined_numbers_to_braille
   braille_output = NightWriter.new.encode_to_braille("cr123")
   assert_equal braille_output, "000..00..00..000
..00.0...00..0..
..0.00..00..00.."
  end

  def test_can_encode_number_turns_to_letter_when_space_provided_to_braille
   braille_output = NightWriter.new.encode_to_braille("123 abc")
   assert_equal braille_output, ".00..00..000..0.0.00
.0...00..0......0...
00..00..00.........."
  end

  def test_can_encode_number_turns_to_letter_when_space_provided_to_braille
   braille_output = NightWriter.new.encode_to_braille("123 ABC")
   assert_equal braille_output, ".00..00..000....0...0...00
.0...00..0..........0.....
00..00..00.....0...0...0.."
  end

  def test_can_encode_number_turns_to_letter_when_space_provided_to_braille
   braille_output = NightWriter.new.encode_to_braille("123 ABC")
   assert_equal braille_output, ".00..00..000....0...0...00
.0...00..0..........0.....
00..00..00.....0...0...0.."
  end


  def test_can_encode_na_special_character_to_braille
   braille_output = NightWriter.new.encode_to_braille("!")
   assert_equal braille_output, "..
..
0."
  end

  def test_can_encode_na_special_character_and_a_number_to_braille
   braille_output = NightWriter.new.encode_to_braille("7!")
   assert_equal braille_output, ".000..
.000..
00..0."
  end

  def test_can_encode_a_special_character_and_a_space_to_braille
   braille_output = NightWriter.new.encode_to_braille(" ,")
   assert_equal braille_output, "...0
....
...."
  end

  def test_can_encode_na_special_character_and_an_uppercase_letter_to_braille
   braille_output = NightWriter.new.encode_to_braille("-Z")
   assert_equal braille_output, "....0.
.....0
00.000"
  end

  def test_can_encode_na_special_character_and_an_uppercase_and_number_to_braille
   braille_output = NightWriter.new.encode_to_braille("4,GO!")
   assert_equal braille_output, ".000.0..00..0...
.0.0....00...0..
00.....0...00.0."
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

end
