require_relative '../lib/q2_2'

RSpec.describe '../lib/q2_2' do
  describe '#sort_by_length' do
    it 'orders words from smallest to largest' do
      arr = %w[this is the story]
      expected = %w[is the this story]
      expect(arr.sort_by_length).to eq expected
    end
  end
end
