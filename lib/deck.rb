# lib/deck.rb

require 'card'

class Deck
  attr_reader :cards

  CARD_SUITS = %w(Spades Hearts Clubs Diamonds)
  CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)

  def initialize(cards = nil)
    if cards
      @cards = cards
    else

      @cards = []

      CARD_VALUES.each do |card_value|
        CARD_SUITS.each do |card_suit|

          @cards << Card.new(card_value, card_suit)
        end
      end
    end
  end

  def count
    @cards.length
  end

  def contains(card)
    @cards.include?(card)
  end

  def shuffle!(iterations = 10)
    iterations.times { @cards.shuffle! }
  end

  def draw_card
    @cards.first
  end

  private

  def random_num
    prng = Random.new
    prng.rand(count)
  end
end
