require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'

require 'card'

describe Card do

  CARD_SUITS = %w(Spades Hearts Clubs Diamonds)
  CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)

  it 'has a suit' do

    card_value = CARD_VALUES[0]

    CARD_SUITS.each do |card_suit|
      card = Card.new(card_value, card_suit)
      card.suit.must_equal card_suit
    end

  end

  it 'has a value' do

    card_suit = CARD_SUITS[0]

    CARD_VALUES.each do |card_value|
      card = Card.new(card_value, card_suit)
      card.value.must_equal card_value
    end
  end

  it 'is equal to another card' do
    card1 = Card.new(CARD_VALUES[0], CARD_SUITS[0])
    card2 = Card.new(CARD_VALUES[0], CARD_SUITS[0])

    (card1 == card2).must_equal true
  end

  it 'is not equal to another card' do
    card1 = Card.new(CARD_VALUES[0], CARD_SUITS[0])
    card2 = Card.new(CARD_VALUES[1], CARD_SUITS[1])

    (card1 == card2).must_equal false
  end

  it 'has a to_str' do
    card = Card.new(CARD_VALUES[0], CARD_SUITS[0])
    card.must_respond_to :to_str
  end

  it 'to_str has correct format' do
    card = Card.new(CARD_VALUES[0], CARD_SUITS[0])
    card.to_str.must_equal '2 of Spades'
  end

end
