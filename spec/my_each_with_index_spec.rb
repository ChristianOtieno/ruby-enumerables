# frozen_string_literal: true

require './bin/main.rb'

RSpec.describe Enumerable do
  describe '.each_with_index should return' do
    it 'an enumerator when no block is given' do
      enumerator = [1, 2, 3, 4, 5].my_each_with_index
      expect(enumerator).to be_an Enumerator
    end

    describe 'correct ele, index pairs on each iteration' do
      it 'when a list of items is passed in' do
        expect do |b|
          [1, 2, 3].my_each_with_index(&b)
        end.to yield_successive_args([1, 0], [2, 1], [3, 2])
      end
    end
  end
end
