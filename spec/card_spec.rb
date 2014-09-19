require 'minitest/spec'
require 'minitest/autorun'
require 'minitest/pride'

require 'card'

describe Card do
  it 'has a suit' do

    card_value = Card::VALUES[0]

    Card::SUITS.each do |card_suit|
      card = Card.new(card_value, card_suit)
      card.suit.must_equal card_suit
    end

  end

  it 'has a value' do

    card_suit = Card::SUITS[0]

    Card::VALUES.each do |card_value|
      card = Card.new(card_value, card_suit)
      card.value.must_equal card_value
    end
  end

  it 'is equal to another card' do
    card1 = Card.new(Card::VALUES[0], Card::SUITS[0])
    card2 = Card.new(Card::VALUES[0], Card::SUITS[0])

    (card1 == card2).must_equal true
  end

  it 'is not equal to another card' do
    card1 = Card.new(Card::VALUES[0], Card::SUITS[0])
    card2 = Card.new(Card::VALUES[1], Card::SUITS[1])

    (card1 == card2).must_equal false
  end

  it 'to_str has correct format' do
    card = Card.new(Card::VALUES[0], Card::SUITS[0])
    card.to_s.must_equal '2 of Spades'
  end

end
