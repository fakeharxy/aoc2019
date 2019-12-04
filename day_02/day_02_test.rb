# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './day_01'

class Day02Tests < Minitest::Test
  def setup
    @app = Day02.new
  end

  def test_app
    assert_equal [1,0,0,0,99], @app.compute(2)
    assert_equal [2,3,0,3,99], @app.compute(2)
    assert_equal [1,9,10,3,2,3,11,0,99,30,40,50], @app.compute(3500)
    assert_equal [1,1,1,4,99,5,6,0,99], @app.compute(30)
  end
end
