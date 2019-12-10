# frozen_string_literal: true

class RouteBuilder
  attr_reader :file
  def initialize(file)
    @file = file
  end

  def create_route
    @file.inject([[0, 0]]) do |array, instruction|
      array.concat perform_instruction(array.last.dup, instruction)
    end
  end

  def perform_instruction(current_position, instruction)
    direction = instruction[0]
    instruction[0] = ''
    number = instruction.to_i
    case direction
    when 'U'
      perform_up(number, current_position)
    when 'D'
      perform_down(number, current_position)
    when 'L'
      perform_left(number, current_position)
    when 'R'
      perform_right(number, current_position)
    end
  end

  private

  def perform_up(number, current_position)
    array = []
    number.times { current_position[1] += 1; array << current_position.dup }
    array
  end

  def perform_down(number, current_position)
    array = []
    number.times { current_position[1] -= 1; array << current_position.dup }
    array
  end

  def perform_left(number, current_position)
    array = []
    number.times { current_position[0] -= 1; array << current_position.dup }
    array
  end

  def perform_right(number, current_position)
    array = []
    number.times { current_position[0] += 1; array << current_position.dup }
    array
  end
end
