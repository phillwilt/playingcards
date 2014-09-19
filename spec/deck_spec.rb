require 'minitest/autorun'
require 'minitest/pride'

require 'card'
require 'deck'

describe Deck do
  it 'has 52 cards' do

    deck = Deck.new
    deck.count.must_equal 52
  end

  it 'has one of each card' do

    deck = Deck.new

    Card::VALUES.each do |card_value|
      Card::SUITS.each do |card_suit|

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
