gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_a_word
    game = Scrabble.new

    assert_equal 8, game.score("hello")
  end

  def test_score_is_0_with_empty_string
    game = Scrabble.new

    assert_equal 0, game.score(" ")
  end

  def test_score_is_nil_with_nil
    skip
    game = Scrabble.new

    assert_nil game.score
  end

  def test_score_with_multipliers
    skip
    game.score_with_multipliers('hello', [1,2,1,1,1])
  end
end
