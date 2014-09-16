# lib/card.rb

class Card
  attr_reader :suit
  attr_reader :value

  def initialize(value, suit)
    @suit = suit
    @value = value
  end

end
