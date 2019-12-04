# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './pointer'

class CompilerTests < Minitest::Test
  def setup
    @compiler = Compiler.new
  end
end
