require_relative '../lib/q2_3'

RSpec.describe '../lib/q2_3' do
  describe '#mean' do
    it 'calculates average' do
      arr = [1, 2, 3, 4]
      expect(arr.mean).to eq 2.5
    end
  end
end
