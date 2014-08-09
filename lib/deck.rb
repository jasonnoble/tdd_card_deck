require './lib/card'

class Deck
  def cards
    @cards = []
    [:heart, :spade, :club, :diamond].each do |suit|
      ((2..10).to_a + %w(J Q K A)).each do |card_value|
        @cards << Card.new(suit, card_value)
      end
    end
    @cards
  end

  def shuffle
    @cards.shuffle!
  end
end
