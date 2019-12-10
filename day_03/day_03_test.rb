# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './day_03'

class Day03Tests < Minitest::Test
  def setup
    @app = Day02.new('input.txt')
  end

end
