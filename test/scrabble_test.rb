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

# > game = Scrabble.new
# => ...
# > game.score("hello")
# => 8
# > game.score("")
# => 0
# > game.score(nil)
# => 0
# > game.score_with_multipliers('hello', [1,2,1,1,1])
# => 9
# > game.score_with_multipliers('hello', [1,2,1,1,1], 2)
# => 18
end
