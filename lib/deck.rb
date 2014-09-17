# lib/deck.rb

require "card"

class Deck
  attr_reader :cards

  @@card_suits = ["Spades", "Hearts", "Clubs", "Diamonds"]
  @@card_vaues = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack",
      "Queen", "King", "Ace"]

  def initialize(cards = nil)

    if cards
      @cards = cards
    else

      @cards = Array.new

      @@card_vaues.each do |card_value|
        @@card_suits.each do |card_suit|

          @cards << Card.new(card_value,card_suit)
        end
      end
    end
  end

  def count
    return @cards.length
  end

  def contains(card)
    @cards.include?(card)
  end

  def shuffle!(iterations = 10)
    iterations.times{ @cards.shuffle! }
  end

  private

  def get_random_num
    prng = Random.new
    prng.rand(self.count)
  end
end
