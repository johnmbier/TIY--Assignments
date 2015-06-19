class Deck

	def initialize(cards)
	  @cards = Card.all.shuffle
	end

	def cards
	  @cards
	end	

	def deal
	  @cards.shift
	end  	
end
