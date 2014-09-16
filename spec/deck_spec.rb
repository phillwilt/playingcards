require "minitest/autorun"
require "minitest/pride"

require "card"
require "deck"

describe Deck do

  card_suits = ["Spades", "Hearts", "Clubs", "Diamonds"]
  card_values = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack",
      "Queen", "King", "Ace"]

  it "has 52 cards" do

    deck = Deck.new
    deck.count.must_equal 52
  end

  it "has one of each card" do

    deck = Deck.new

    card_values.each do |card_value|
      card_suits.each do |card_suit|

        card = Card.new(card_value,card_suit)

        deck.contains(card).must_equal true
      end
    end

  end

end
