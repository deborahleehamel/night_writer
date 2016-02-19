require 'minitest/autorun'
require 'minitest/pride'

class FileIOTest < Minittest::Test

  def test_file_exists
    skip
    assert File.exists?(file_io.rb)
  end

end
