# frozen_string_literal: true

require_relative '../file_loader'
require_relative './route_builder'

class Day03
  def initialize(file)
    @file1 = FileLoader.new("./#{file}").to_a_from_line(1)
    @file2 = FileLoader.new("./#{file}").to_a_from_line(2)
    @route1 = RouteBuilder.new(@file1)
    @route2 = RouteBuilder.new(@file2)
  end
end
