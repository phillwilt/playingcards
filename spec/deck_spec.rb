require 'minitest/autorun'
require 'minitest/pride'

require 'card'
require 'deck'

describe Deck do

  CARD_SUITS = %w(Spades Hearts Clubs Diamonds)
  CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)

  it 'has 52 cards' do

    deck = Deck.new
    deck.count.must_equal 52
  end

  it 'has one of each card' do

    deck = Deck.new

    CARD_VALUES.each do |card_value|
      CARD_SUITS.each do |card_suit|

        card = Card.new(card_value, card_suit)

        deck.contains(card).must_equal true
      end
    end
  end

  it 'has a shuffle method' do
    deck = Deck.new
    deck.must_respond_to :shuffle!
  end

  it 'has a draw card method' do
    deck = Deck.new
    deck.must_respond_to :draw_card
  end

end
