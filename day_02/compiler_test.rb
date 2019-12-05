# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './compiler'

class CompilerTests < Minitest::Test
  def test_addition
    @compiler = Compiler.new([1, 0, 0, 0, 99])
    @compiler.read_loop
    assert_equal [2, 0, 0, 0, 99], @compiler.instructions
  end

  def test_multiplication
    @compiler = Compiler.new([2, 4, 4, 5, 99, 0])
    @compiler.read_loop
    assert_equal [2, 4, 4, 5, 99, 9801], @compiler.instructions
  end

  def test_longer_multiplication
    @compiler = Compiler.new([2, 2, 7, 2, 1, 2, 6, 0, 99])
    @compiler.read_loop
    assert_equal [6, 2, 0, 2, 1, 2, 6, 0, 99], @compiler.instructions
  end

  def test_from_example
    @compiler = Compiler.new([1, 9, 10, 3, 2, 3, 11, 0, 99, 30, 40, 50])
    @compiler.read_loop
    assert_equal [3500, 9, 10, 70, 2, 3, 11, 0, 99, 30, 40, 50], @compiler.instructions
  end

  def test_2_from_example
    @compiler = Compiler.new([1,1,1,4,99,5,6,0,99])
    @compiler.read_loop
    assert_equal [30,1,1,4,2,5,6,0,99], @compiler.instructions
  end
end
