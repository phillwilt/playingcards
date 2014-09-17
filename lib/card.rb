# lib/card.rb

class Card
  attr_reader :suit
  attr_reader :value

  def initialize(value, suit)
    @suit = suit
    @value = value
  end

  def ==(other)
    other.suit == @suit && other.value == @value
  end

  def to_str
    "#{@value} of #{@suit}"
  end
end
