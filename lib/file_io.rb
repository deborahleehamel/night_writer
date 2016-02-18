module FileIO
  def self.read
    input_file = ARGV[0]
    File.read(input_file).chomp
  end

  def write(output)
    output_file = ARGV[1]
    File.open(output_file, 'w') { |f| f.puts output }
  end
end
