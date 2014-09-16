require "minitest/spec"
require "minitest/autorun"

require "card"

describe Card do
  card_suits = ["Spades", "Hearts", "Clubs", "Diamonds"]
  card_values = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack",
      "Queen", "King", "Ace"]

  it "has a suit" do
    card_value = card_values[0]

    card_suits.each do |suit|
      card = Card.new(card_value, suit)
      assert_equal card.suit suit
    end

  end

  it "has a value" do
    card_suit = card_suits[0]

    card_values.each do |value|
      card = Card.new(value, card_suit)
      assert_equal card.value value
    end
  end

end
