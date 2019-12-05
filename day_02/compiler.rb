# frozen_string_literal: true
#
require_relative "./pointer"

class Compiler
  attr_accessor :instructions

  def initialize(instructions)
    @instructions = instructions
    @pointer = Pointer.new
  end
end
