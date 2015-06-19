require 'minitest'
require 'minitest/autorun'
require './card'
require './deck'

class DeckTest <MiniTest::Test
    
    def setup
    	@deck = Deck.new
    end

	def test_deck_exists
	  assert Deck
	end

	def test_deck_is_initialized_with_cards_in_it
      @deck = Deck.new
      assert @deck
	end

	def	test_deck_has_52_unique_cards
	  @deck = Deck.new
	  assert_equal 52, @deck.cards.length
	  assert_equal 52, @deck.cards.uniq.length
	  assert @deck.cards.all?{|card| card.is_a?(Card)}	
	end	

	def test_deck_is_shuffled
	  unshuffled_cards = Card.all
	  shuffled_cards = @deck.cards
	  refute_equal unshuffled_cards, shuffled_cards
	end
	
	def test_deck_can_deal_a_card
      card = @deck.deal
      assert card
      assert card.is_a?(Card)
    end  

    def test_card_is_removed_after_dealt
      assert_equal 51, @deck.cards.length
    end  	

    

end	
