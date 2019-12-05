# frozen_string_literal: true

require_relative '../file_loader'
require_relative './compiler'

class Day02
  def initialize(file)
    instructions = FileLoader.new("./#{file}").to_a_from_line
    @compiler = Compiler.new(instructions)
    puts answer
  end

  def answer
    @compiler.answer
  end
end
