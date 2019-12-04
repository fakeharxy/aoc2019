# frozen_string_literal: true

require_relative '../file_loader'
require_relative './counter'

class Day01
  def initialize
    array = FileLoader.new('./input.txt').to_a_from_file
    @counter = Counter.new
    p total_input(array)
  end

  def total_input(array)
    array.reduce(0) { |initial, total| initial + counter(total) }
  end

  def counter(number)
    total = 0
    while @counter.run(number) > 0
      result = @counter.run(number)
      total += result
    end
    total
  end
end

app = Day01.new
