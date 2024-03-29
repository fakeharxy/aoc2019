# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './pointer'

class PointerTests < Minitest::Test
  def setup
    @pointer = Pointer.new
  end

  def test_pointer_starts_0
    assert_equal @pointer.value, 0
  end

  def test_pointer_moves_forward_4
    @pointer.next_instruction
    assert_equal @pointer.value, 4
  end

  def test_pointer_values
    assert_equal @pointer.first_value, 1
    assert_equal @pointer.second_value, 2
    assert_equal @pointer.save_location, 3
  end
    
  def test_pointer_values_after_move
    @pointer.next_instruction
    assert_equal @pointer.first_value, 5
    assert_equal @pointer.second_value, 6
    assert_equal @pointer.save_location, 7
  end

end
