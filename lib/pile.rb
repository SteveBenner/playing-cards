# A Pile is a generic collection of <Card> objects, super class to <Stack> and <Queue>.
class Pile < Array
	# For our purposes, shuffling should always be in place
	alias :shuffle :shuffle!
end

# Include LIFO or FIFO within a subclass of <Pile> to specify how members are accessed
module LIFO
	def self.included(base)
		base.class_eval do
			alias_method :push, :unshift
			alias_method :pop, :shift
		end
	end
end

module FIFO
	def self.included(base)
		base.class_eval do
			alias_method :pop, :shift
		end
	end
end
