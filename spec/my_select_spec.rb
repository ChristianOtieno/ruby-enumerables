require './bin/main.rb'

RSpec.describe Enumerable do
  let(:array) { Array.new(100) { rand(1...10) } }

  describe '#my_select' do
    it 'when no block or argument is given returns an enumerator' do
      expect(array.my_select).to be_a(Enumerator)
    end
    it 'Returns an array containing all elements of enum for which the given block returns a true value.' do
      expect(array.my_select(&:even?)).to eql(array.select(&:even?))
    end
  end
end