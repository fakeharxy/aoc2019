# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './day_01'

class Day01Tests < Minitest::Test
  def setup
    @app = Day01.new
  end

  def test_total_input
    assert_equal 2, @app.total_input([14])
    assert_equal 966, @app.total_input([1_969])
    assert_equal 50_346, @app.total_input([100_756])
    assert_equal 51_314, @app.total_input([1_969, 14, 100_756])
  end
end
