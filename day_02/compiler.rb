# frozen_string_literal: true

class Compiler
  attr_accessor :instructions

  def initialize(instructions)
    @instructions = instructions
  end
end
