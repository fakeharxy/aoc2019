# frozen_string_literal: true

class FileLoader
  def initialize(file_path)
    @file = File.read(file_path)
  end

  def to_a_from_file
    @file.split("\n").map(&:to_i)
  end

  def to_a_from_line(line_num)
    @file.split("\n")[line_num-1].split(',')
  end
end
