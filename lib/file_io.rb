module FileIO
  def read(input_file)
    File.read(input_file)
  end

  def write(output, output_file)
    File.open(output_file, 'w').write(output)
  end
end
