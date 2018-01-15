# encoding: utf-8
#
# Generic playing card class for use in object-oriented programs. Provides the following:
# - Unicode representation of playing cards via codepoint composition
# - Colorization
#
require 'colorize'

class Card
	# Components for unicode values of playing cards, taken from:
	# https://ipfs.io/ipfs/QmXoypizjW3WknFiJnKLwHCnL72vedxjQkDDP1mXWo6uco/wiki/Playing_cards_in_Unicode.html
	UNICODE_VALUES = {
		card_back: "\u{1F0A0}",
		suit: {spades: 'A', hearts: 'B', diamonds: 'C', clubs: 'D'},
		# Rank values represent the unicode char for each successive card rank, beginning with 'Ace' and excluding 'Knight'.
		rank: %w[1 2 3 4 5 6 7 8 9 A B D E]
	}

	attr_reader :suit, :rank, :faceup, :color
	alias :faceup? :faceup

	# @param [Symbol] suit one of: [:spades, :hearts, :diamonds, :clubs]
	# @param [Integer] rank numerical representation of the card value (including Jack, King, and Queen) from 0..13
	# @param [Boolean] faceup whether or not a card is faceup
	def initialize(suit=:spades, rank=1, faceup=true)
		@suit  = suit
		@rank   = rank
		@faceup = faceup
		@color  = case suit
			          when /spades|clubs/ then :black
			          when /hearts|diamonds/ then :red
		          end
	end

	# Prints the string value of a card in a human-recognizable format, using whatever encoding ('IMB437' on windows)
	def print
		$stdout.print self.unicode_representation
	end

	def to_s
		self.unicode_representation
	end

	def flip
		@faceup = !@faceup
		# todo: refresh output within this method?
	end

	protected

	# @return [String] string value for a playing card, encoded as: 'UTF-8'
	def unicode_representation
		if !@faceup
			UNICODE_VALUES[:card_back]
		else # Construct unicode string for a card based on its suit and rank, and add color
			codepoint = '1F0' + UNICODE_VALUES[:suit][@suit] + UNICODE_VALUES[:rank][@rank - 1]
			[codepoint.hex].pack('U').colorize @color
		end
	end
end
