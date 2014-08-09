require 'rspec'
require './lib/deck'

describe Deck do
  it 'should be a Deck' do
    expect(subject).to be_a(Deck)
  end

  describe '#cards' do
    let(:cards) { subject.cards }
    it 'should have 52 cards' do
      expect(cards.length).to eq(52)
      cards.each do |card|
        expect(card).to be_a(Card)
      end
    end

    it 'includes 13 hearts' do
      only_heart_cards = cards.select { |card| card.suit == :heart }
      expect(only_heart_cards.length).to eq(13)
      expect(only_heart_cards.map(&:value).uniq.length).to eq(13)
    end

    it 'includes 13 diamonds' do
      only_diamond_cards = cards.select { |card| card.suit == :diamond }
      expect(only_diamond_cards.length).to eq(13)
      expect(only_diamond_cards.map(&:value).uniq.length).to eq(13)
    end
    it 'includes 13 spades' do
      only_spade_cards = cards.select { |card| card.suit == :spade }
      expect(only_spade_cards.length).to eq(13)
      expect(only_spade_cards.map(&:value).uniq.length).to eq(13)
    end
    it 'includes 13 clubs' do
      only_club_cards = cards.select { |card| card.suit == :club }
      expect(only_club_cards.length).to eq(13)
      expect(only_club_cards.map(&:value).uniq.length).to eq(13)
    end
  end

  describe '#shuffle' do
    it 'shuffles the deck' do
      expect { subject.shuffle }.to change(subject, :cards)
    end
  end
end
