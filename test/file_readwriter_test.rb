require 'test_helper'

class FileReadWriterTest < Minittest::Test

  def test_file_exists
    skip
    assert File.exists?(file_readwriter.rb)
  end


end
