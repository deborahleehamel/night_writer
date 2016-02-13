class FileReader

  def read
    filename = ARGV[0]
    File.read(filename)
  end

  def write(text)
    output_file = File.open(ARGV[1], 'a')
    output_file.write(text)
  end
end
