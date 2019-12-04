# frozen_string_literal: true

class Pointer
  attr_accessor :value
  def initialize
    @value = 0
  end

  def next_instruction
    @value += 4
  end
end
