# frozen_string_literal: true

require './bin/main.rb'
RSpec.describe Enumerable do
  let(:array) { Array.new(100) { rand(1...10) } }

  describe '#my_count' do
    it 'when no block or argument is given returns the length of enum' do
      expect(array.my_count).to eql(array.count)
    end
    it ' If an argument is given, the number of items in enum that are equal to item are counted' do
      expect(array.my_count(2)).to eql(array.count(2))
    end
  end
end
