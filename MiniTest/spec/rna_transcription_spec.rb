require_relative '../lib/rna_transcription'

RSpec.describe '../lib/rna_transcription' do
  describe '#of_dna' do
    it 'returns guanine as complement of cytosine' do
      expect(Complement.of_dna('C')).to eq 'G'
    end

    it 'returns cytosine as complement of guanine' do
      expect(Complement.of_dna('G')).to eq 'C'
    end

    it 'returns adenine as complement of thymine' do
      expect(Complement.of_dna('T')).to eq 'A'
    end

    it 'returns uracil as complement of adenine' do
      expect(Complement.of_dna('A')).to eq 'U'
    end

    it 'translates DNA to RNA' do
      expect(Complement.of_dna('ACGTGGTCTTAA')).to eq 'UGCACCAGAAUU'
    end

    it 'correctly handles invalid input of RNA instead of DNA' do
      expect(Complement.of_dna('U')).to eq ''
    end

    it 'correctly handles completely invalid DNA input' do
      expect(Complement.of_dna('XXX')).to eq ''
    end

    it 'correctly handles partially invalid DNA input' do
      expect(Complement.of_dna('ACGTXXXCTTAA')).to eq ''
    end
  end
end
