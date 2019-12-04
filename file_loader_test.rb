# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './file_loader'

class FileLoaderTests < Minitest::Test

  def test_to_a_from_file_method
    file_path = "./file_test.txt"
    @loader = FileLoader.new(file_path)
    assert_equal [3,4,5], @loader.to_a_from_file
  end

  def test_to_a_from_line_method
    file_path = "./line_test.txt"
    @loader = FileLoader.new(file_path)
    assert_equal [3,4,5], @loader.to_a_from_line
  end

end

