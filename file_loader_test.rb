# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './file_loader'

class FileLoaderTests < Minitest::Test

  def test_from_file_method
    file_path = "./file_test.txt"
    @loader = FileLoader.new(file_path)
    assert_equal [3,4,5], @loader.to_a_from_file
  end

  def test_from_line_method
    file_path = "./line_test.txt"
    @loader = FileLoader.new(file_path)
    assert_equal [3,4,5], @loader.to_a_from_line(1)
  end

  def test_get_a_line
    file_path = "./line_test.txt"
    @loader = FileLoader.new(file_path)
    assert_equal [6,7,8], @loader.to_a_from_line(2)
  end


end

