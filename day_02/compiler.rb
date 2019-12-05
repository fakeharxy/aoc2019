# frozen_string_literal: true

require_relative './pointer'

class Compiler
  attr_accessor :instructions

  def initialize(instructions)
    @instructions = instructions
    @pointer = Pointer.new
    read_loop
  end

  def read_loop
    while current_step != 99
      addition? ? perform_addition : perform_multiplication
      @pointer.next_instruction
    end
  end

  def answer
    @instructions[0]
  end

  def current_step
    @instructions[@pointer.value]
  end

  def addition?
    @instructions[@pointer.value] == 1
  end

  def perform_addition
    addition = @instructions[@instructions[@pointer.first_value]] +
               @instructions[@instructions[@pointer.second_value]]
    perform_save(addition, instructions[@pointer.save_location])
  end

  def perform_multiplication
    multiplication = @instructions[@instructions[@pointer.first_value]] *
                     @instructions[@instructions[@pointer.second_value]]
    perform_save(multiplication, instructions[@pointer.save_location])
  end

  def perform_save(value_to_save, save_location)
    @instructions[save_location] = value_to_save
  end
end
