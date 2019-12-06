# frozen_string_literal: true

require_relative '../file_loader'
require_relative './compiler'

class Day02
  def initialize(file)
    @instructions = FileLoader.new("./#{file}").to_a_from_line
    salter
  end

  def salter
    (1..99).each do |num_x|
      (1..99).each do |num_y|
        @instructions[1] = num_x
        @instructions[2] = num_y
        @compiler = Compiler.new(@instructions.dup)
        if answer == 19_690_720
          puts (100*num_x) + num_y
        end
      end
    end
  end

  def answer
    @compiler.answer
  end
end
