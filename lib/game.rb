require_relative 'deck'

# This represents the game state
class Game
  def initialize
    # Game setup can be specified by overriding Game::setup, or passing in a block
    block_given? ? yield : setup
  end

  private

  # Actions taken upon instantiation of a new <Game> object
  def setup

  end
end