# frozen_string_literal: true

require_relative '../file_loader'
require_relative './counter'

class Day01
  def initialize
    array = FileLoader.new('./input.txt').to_a
    @counter = Counter.new
    p total_input(array)
  end

  def total_input(array)
    count = 0
    array.each do |x|
      count += counter(x)
    end
    count
  end

  def counter(number)
    total = 0
    while @counter.run(number) > 0
      number = @counter.run(number)
      total += number
    end
    total
  end

end

app = Day01.new
