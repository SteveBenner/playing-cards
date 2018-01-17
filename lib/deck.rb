require_relative 'card'
require_relative 'pile'

# A card deck is a specialized type of <Stack>
class Deck < Pile
	SIZE  = 52
	SUITS = %i[spades hearts diamonds clubs]
	RANKS = 1..13 # Includes 'Ace' through 'Ten', 'Jack', 'Queen', and 'King'

	# Pre-defined decks (immutable)
	STANDARD = self.new(52).freeze

	# Populate a deck with given number of cards, enumerating sequentially
	# @param [Integer] num_cards number of num_cards to put in the deck
	def initialize(num_cards = SIZE)
		SUITS.each { |s| RANKS.each { |r| push Card.new s, r } } while size < num_cards
		pop size - num_cards
	end

	def print
		self.each &:print
	end
end