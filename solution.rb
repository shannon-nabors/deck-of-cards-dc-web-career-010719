require 'pry'

class Card
  attr_reader :rank, :suit

  def initialize(suit, rank)
    @suit, @rank = suit, rank
  end
end

class Deck
  attr_accessor :cards

  def initialize
    ranks = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    suits = %w(Hearts Clubs Diamonds Spades)
    cards = ranks.map do |r|
      suits.map { |s| Card.new(r,s) }
    end
    @cards = cards.flatten
  end

  def choose_card
    self.cards.delete_at(rand(1..52))
  end
end
