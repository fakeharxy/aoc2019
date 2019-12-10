# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './day_03'

clas Day03Tests < Minitest::Test
  def setup
    @app = Day03.new('input.txt')
  end

  def test_closest_intersect
    assert_equal [[2,2]], @app.closest_intersect([[0,1], [0,2], [1,2], [2,2]], [[1,0], [2,0], [2,1], [2,2]])
  end

  def test_closest_intersect
    assert_equal 4, @app.closest_intersect([[0,1], [0,2], [1,2], [2,2]], [[1,0], [2,0], [2,1], [2,2]])
  end

  def test_closest_shortest_distance
    assert_equal 4, @app.shortest_distance([[2,2], [3,3], [-4, -2]])
  end
end
