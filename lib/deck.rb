require_relative 'stack'
require_relative 'card'

# A card deck is a specialized type of <Stack>
class Deck < Stack
	SIZE  = 52
	SUITS = %i[spades hearts diamonds clubs]
	RANKS = 1..13 # Includes 'Ace' through 'Ten', 'Jack', 'Queen', and 'King'

	# @param [Integer] cards number of cards to put in a deck
	def initialize(cards = SIZE)
		SUITS.each { |s| RANKS.each { |r| push Card.new s, r } }
	end
end