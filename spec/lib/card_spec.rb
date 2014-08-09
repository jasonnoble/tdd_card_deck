require 'rspec'
require './lib/card'

describe Card do
  subject { Card.new(card_suit, value) }
  let(:card_suit) { :heart }
  let(:value) { 5 }
  it 'should be a Card' do
    expect(subject).to be_a(Card)
  end

  describe '#suit' do
    context 'for a diamond card' do
      let(:card_suit) { :diamond }
      it 'returns diamond' do
        expect(subject.suit).to eq(:diamond)
      end
    end

    context 'for a heart card' do
      let(:card_suit) { :heart }
      it 'returns heart' do
        expect(subject.suit).to eq(:heart)
      end
    end

    context 'for an invalid suit' do
      let(:card_suit) { :floogal }
      it 'should raise an argument error' do
        expect { subject.suit }.to raise_error
      end
    end
  end

  describe '#value' do
    context 'for the 2 of hearts' do
      let(:value) { 2 }
      it 'returns 2' do
        expect(subject.value).to eq(2)
      end
    end

    context 'for the J of diamonds' do
      let(:value) { 'J' }
      it 'returns J' do
        expect(subject.value).to eq('J')
      end
    end

    context 'for an invalid value' do
      let(:value) { 'cement truck' }
      it 'raises an ArgumentError' do
        expect { subject.value }.to raise_error
      end
    end
  end
end
