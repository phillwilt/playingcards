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

        deck.contains?(card).must_equal true
      end
    end
  end

  it 'verify shuffle has 52 unique cards' do
    deck = Deck.new
    deck.cards.uniq.size.must_equal 52
  end

  it 'verify shuffle randomization' do
    deck = Deck.new

    deck.shuffle!
    set1 = Array.new(deck.cards)
    deck.shuffle!
    set2 = Array.new(deck.cards)
    deck.shuffle!
    set3 = Array.new(deck.cards)

    # Note: HIGHLY improbable
    set1.wont_equal set2
    set1.wont_equal set3
    set2.wont_equal set3
  end

  it 'draws a card' do
    deck = Deck.new
    deck.draw_card.must_be_kind_of Card
  end

end
