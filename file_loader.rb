class FileLoader
  def initialize(file_path)
    @file = File.read(file_path)
  end

  def to_a_from_file
    @file.split("\n").map { |num| num.to_i }
  end

  def to_a_from_line
    @file.split(",").map { |num| num.to_i }
  end
end
