class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    fail ArgumentError, 'Invalid suit' unless valid_suit?(suit)
    fail ArgumentError, 'Invalid value' unless valid_value?(value)
    @suit = suit
    @value = value
  end

  # def suit
  #   @suit
  # end

  private

  def valid_suit?(suit)
    [:heart, :diamond, :club, :spade].include?(suit)
  end

  def valid_value?(value)
    ((2..10).to_a + %w(J Q K A)).include?(value)
  end
end
