# lib/card.rb

class Card
  SUITS = %w(Spades Hearts Clubs Diamonds)
  VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)

  attr_reader :suit
  attr_reader :value

  def initialize(value, suit)
    @suit = suit
    @value = value
  end

  def ==(other)
    other.suit == @suit && other.value == @value
  end

  def to_s
    "#{@value} of #{@suit}"
  end
end
