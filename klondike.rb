# Klondike solitaire
#
# Based on: https://en.wikipedia.org/wiki/Klondike_(solitaire)
#
require_relative 'lib/deck' # loads 'deck' and 'pile'
require_relative 'lib/game'

# A game of Klondike consists of
#
# - the main deck, which is a pile of cards with the top card turned over
# - seven tableau piles of cards
# - four foundation piles of cards
#
# A tableau pile consists of 0 or more hidden cards at the bottom of the pile. If a tableau pile is non-empty, then it has at least one exposed card on the top of the pile. A tableau pile may have more than one exposed card. Note that a tableau pile never contains a hidden card placed on top of an exposed card.
#
# At the beginning of the game, the first tableau pile has one card, the second has two cards, etc.
#
# A foundation pile contains cards of the same suit, arranged in order from Ace at the bottom of the pile to King at the top of the pile. (In Klondike, Aces are low.) There are four foundation piles, one for each suit.
#
# On each turn, a player may either
#
# draw another card from the main deck
# move one or more cards
# Drawing a card from the main deck means removing the current top card and placing it in a waste pile. The new top card on the main deck is then exposed. If the main deck is empty, then all of the cards are transferred from the waste pile back to the main deck. (Following the transfer of cards from the waste pile back to the main deck, they should appear in the order in which they originally occurred.)
#
# Moving a card transfers one or more cards from either the main deck or a tableau pile to a tableau pile or a foundation pile. Moves must be done following the rules of the game, which are as follows:
#
# Only the top card may be removed from the main deck.
# Only exposed cards may be moved. (Hidden cards may not be moved.)
# The cards moved are placed on top of whatever pile they are moved to.
# When multiple cards are moved (from a tableau pile), the cards cannot be removed from the "middle" of the pile. Instead, a chosen card and all cards on top of it must be moved.
# The colors of the cards in a tableau pile must alternate red and black. Clubs and Spades are black suits, and Diamonds and Hearts are red suits.
# When a card or cards are moved onto an empty tableau pile, the new bottom card must be a King.
# Following a move, the top card of the pile the card or cards were moved from is exposed (if the pile is not empty.)

class Game
	attr_accessor :deck, :piles

	def setup
		# Begin with a standard deck, shuffled
		@deck  = Deck::STANDARD.dup.shuffle
		# Lay out 7 stacks of cards, each containing one more card than the prior. The first card in each stack is faceup.
		@piles =
	end
end

