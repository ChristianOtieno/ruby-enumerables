# frozen_string_literal: true

RSpec.describe Enumerable do
  let(:arr) { Array.new(100) { rand(1...10) } }
  let(:b) { proc { |num| num < (0 + 100) * 2 } }

  describe '#my_map' do
    it 'to return a new array with the executed block output' do
      expect(arr.my_map { |n| n * 2 }).to eql(arr.map { |n| n * 2 })
    end
    it 'to return a new array with the executed proc output' do
      expect(arr.my_map(&b)) .to eql(arr.map(&b))
    end
  end
end
