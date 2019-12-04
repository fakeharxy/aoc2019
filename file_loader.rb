class FileLoader
  def initialize(file_path)
    @file = File.read(file_path)
  end

  def to_a
    @file.split("\n").map { |num| num.to_i }
  end
end
