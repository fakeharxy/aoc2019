# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './counter'

class CounterTests < Minitest::Test
  def setup
    @counter = Counter.new
  end

  def test_even_number_divisible_by_3
    assert_equal 2, @counter.run(12)
    assert_equal 6, @counter.run(24)
  end

  def test_odd_numbers_divisible_by_3
    assert_equal 1, @counter.run(9)
    assert_equal 7, @counter.run(27)
  end

  def test_even_numbers
    assert_equal 2, @counter.run(14)
  end

  def test_odd_numbers
    assert_equal 654, @counter.run(1969)
  end
end
