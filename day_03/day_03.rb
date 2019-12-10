# frozen_string_literal: true

require_relative '../file_loader'
require_relative './route_builder'

class Day03
  def initialize(file)
    @file1 = FileLoader.new("./#{file}").to_a_from_line(1)
    @file2 = FileLoader.new("./#{file}").to_a_from_line(2)
    route1 = RouteBuilder.new(@file1)
    route2 = RouteBuilder.new(@file2)
    puts closest_intersect(route1.create_route, route2.create_route)
  end

  def closest_intersect(route1, route2)
    intersect_array = route1 & route2
    shortest_distance(intersect_array)
  end

  def shortest_distance(intersect_array)
    answer = intersect_array.map { |array| array[0].abs + array[1].abs } - [0]
    answer.min
  end
end
