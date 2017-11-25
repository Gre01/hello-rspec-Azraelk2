require_relative '../lib/raindrops'

describe "#Raindrops" do
    it "test sound for 1 is 1" do
      expect(Raindrops.convert(1)).to eq "1"
    end

    it "test sound for 3 is pling" do
      expect(Raindrops.convert(3)).to eq "Pling"
    end

    it "test sound for 5 is plang" do
      expect(Raindrops.convert(5)).to eq "Plang"
    end

    it "test sound for 7 is plong" do
      expect(Raindrops.convert(7)).to eq "Plong"
    end

    it "test sound for 6 is pling" do
      expect(Raindrops.convert(6)).to eq "Pling"
    end

    it "test sound for 35 is plangplong" do
      expect(Raindrops.convert(35)).to eq "PlangPlong"
    end

    it "test sound for 49 is plong" do
      expect(Raindrops.convert(49)).to eq "Plong"
    end

    it "test sound for 105 is PlingPlangPlong" do
      expect(Raindrops.convert(105)).to eq "PlingPlangPlong"
    end
end
