require_relative './route_builder'
require 'minitest/autorun'
require 'minitest/pride'

class RouteBuilderTests < Minitest::Test
  def setup
    @route = RouteBuilder.new(['U3', 'L3', 'D3'])
  end

  def test_file_input
    assert_equal ['U3', 'L3', 'D3'], @route.file
  end
end
