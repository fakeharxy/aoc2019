# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './compiler'

class CompilerTests < Minitest::Test
  def test_receive_file
    @compiler = Compiler.new([1, 0, 0, 0, 99])
    assert_equal @compiler.instructions, [1, 0, 0, 0, 99]
  end
end
