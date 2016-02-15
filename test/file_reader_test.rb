require 'test_helper'

class FileReaderTest < Minittest::Test

  def test_file_exists
    skip
    assert File.exists?(file_reader.rb)
  end


end
