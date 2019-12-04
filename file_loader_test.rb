# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/pride'
require_relative './file_loader'

class FileLoaderTests < Minitest::Test
  def setup
    file_path = "./test.txt"
    @loader = FileLoader.new(file_path)
  end

  def test_to_a_method
    assert_equal [3,4,5], @loader.to_a
  end

end

