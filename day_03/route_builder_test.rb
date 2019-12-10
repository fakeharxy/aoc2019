require_relative './route_builder'
require 'minitest/autorun'
require 'minitest/pride'

class RouteBuilderTests < Minitest::Test

  def test_file_input
    @route = RouteBuilder.new(['U3', 'L3', 'D3'])
    assert_equal ['U3', 'L3', 'D3'], @route.file
  end

  def test_create_route_up
    @route = RouteBuilder.new(['U3'])
    assert_equal [[0,0], [0,1], [0,2], [0,3]], @route.create_route
  end

  def test_create_route_down
    @route = RouteBuilder.new(['D3'])
    assert_equal [[0,0], [0,-1], [0,-2], [0,-3]], @route.create_route
  end

  def test_create_route_left
    @route = RouteBuilder.new(['L3'])
    assert_equal [[0,0], [-1,0], [-2,0], [-3,0]], @route.create_route
  end

  def test_create_route_right
    @route = RouteBuilder.new(['R3'])
    assert_equal [[0,0], [1,0], [2,0], [3,0]], @route.create_route
  end

  def test_multiple_commands
    @route = RouteBuilder.new(['R1', 'U2'])
    assert_equal [[0,0], [1,0], [1,1], [1,2]], @route.create_route
  end

end
