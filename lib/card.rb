# lib/card.rb

class Card
  attr_reader :suit
  attr_reader :value

  def initialize(value, suit)
    @suit = suit
    @value = value
  end

  def ==(other_object)
    other_object.suit == self.suit && other_object.value == self.value
  end

end
