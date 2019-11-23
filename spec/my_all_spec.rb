# frozen_string_literal: true

require './bin/main.rb'

# when .all? should return true
describe Enumerable do
  describe 'my_all? should return true when all items' do
    it 'are truthy' do
      expect([1, 2i, 3.14].my_all?(Numeric)).to eq(true)
    end

    it 'in block yield true' do
      a = %w[ant bear cat]
      expect(a.my_all? { |word| word.length >= 3 }).to eq(true)
    end

    it 'match a pattern' do
      expect(%w[i am a string].my_all?(String)).to eq(true)
    end
  end
end

# when .all? should return false
describe Enumerable do
  describe '.all? should return false when some element' do
    it 'is falsy' do
      expect([nil, true, 99].my_all?).not_to eq(true)
    end

    it 'in block yield false' do
      a = %w[ant bear cat]
      expect(a.my_all? { |word| word.length >= 4 }).not_to eq(true)
    end
  end
end
