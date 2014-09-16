require "minitest/spec"
require "minitest/autorun"
require "minitest/pride"

require "card"

describe Card do
  card_suits = ["Spades", "Hearts", "Clubs", "Diamonds"]
  card_values = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack",
      "Queen", "King", "Ace"]

  it "has a suit" do
    card_value = card_values[0]

    card_suits.each do |card_suit|
      card = Card.new(card_value, card_suit)
      card.suit.must_equal card_suit
    end

  end

  it "has a value" do
    card_suit = card_suits[0]

    card_values.each do |card_value|
      card = Card.new(card_value, card_suit)
      card.value.must_equal card_value
    end
  end

end
