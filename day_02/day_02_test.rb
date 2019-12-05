# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './day_02'

class Day02Tests < Minitest::Test
  def setup
    @app = Day02.new('input.txt')
  end

  def test_app
    assert_equal 2894520, @app.answer
  end
end
