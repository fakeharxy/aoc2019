# frozen_string_literal: true

class Pointer
  attr_accessor :value
  def initialize
    @value = 0
  end

  def next_instruction
    @value += 4
  end

  def first_value
    @value + 1
  end

  def second_value
    @value + 2
  end

  def save_location
    @value + 3
  end
end
