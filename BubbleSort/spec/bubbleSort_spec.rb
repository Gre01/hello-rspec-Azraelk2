require_relative '../lib/bubbleSort'
describe "sort_integers" do
  it "moves the smallest integer to the front of the array" do
    array = [8, 1, 5, 3, 4]
    expect(array.makeBubble ).to start_with 1
  end

  it "moves the largest integer to the end of the array" do
    array = [12, 32, 16, 252, 86, 251]
    expect(array.makeBubble ).to end_with 252
  end
    
  it "handles zero appropriately" do
    array = [6, 2, 3, 1, 0, 7, 11]
    expect( array.makeBubble ).to start_with 0
  end

  it "handles negative numbers appropriately" do
    array = [1, 7, 5, 3, -12, 9, 6]
    expect( array.makeBubble ).to start_with -12
  end

  it "handles positive and negative infinity" do
    array = [Float::INFINITY, 255, 0, 384, -Float::INFINITY]
    expect( array.makeBubble ).to eq [-Float::INFINITY, 0, 255, 384, Float::INFINITY]
  end

  it "sort positive integer" do
    array = [1, 12, 5, 6, 16]
    expect( array.makeBubble ).to eq([1, 5, 6, 12, 16])
  end

  it "sort negative integer" do
    array = [-1, -12, -5, -6, -16]
    expect( array.makeBubble ).to eq([-16, -12, -6, -5, -1])
  end
end

describe "#sort_other_numbers" do
  it "sort decimals" do
    array = [2.2, 3.3, 5.5, 1.1]
    expect( array.makeBubble ).to eq([1.1, 2.2, 3.3, 5.5])
  end

  it "sort negative decimals" do
    array = [-5.2, -11.6, -6.9, -12.3]
    expect( array.makeBubble ).to eq([-12.3, -11.6, -6.9, -5.2])
  end

  it "sort decimals by precision" do
    array = [-0.1, -0.01, -0.02, -0.00000001, 0.00001, 0.001]
    expect( array.makeBubble ).to eq([-0.1, -0.02, -0.01, -0.00000001, 0.00001, 0.001])
  end

  it "sort integers by most disadvantageous order" do
    array = [60, 45, 30, 15, 0, -11, -23, -55]
    expect( array.makeBubble ).to eq([-55, -23, -11, 0, 15, 30, 45, 60])
  end
end

describe "#check_bubblesort" do
  it "handles an empty array" do
    array = []
    expect( array.makeBubble ).to eq []
  end

  it "handles an array of length one" do
    array = [51]
    expect( array.makeBubble ).to eq [51]
  end
end
describe "#sort_words" do
  it "sort similar named words" do
    array = ["Pomarańcza", "Pomara", "Pomarańcz", "Pomarańczowy", "Pomarańczkowy"]
    expect( array.makeBubble ).to eq(["Pomara", "Pomarańcz", "Pomarańcza", "Pomarańczkowy", "Pomarańczowy"])
  end

  it "sort words by most disadvantageous order" do
    array = ["Zygfryd", "Ysmena", "Xardas", "Warwick", "Ustka"]
    expect( array.makeBubble ).to eq(["Ustka", "Warwick", "Xardas", "Ysmena", "Zygfryd"])
  end

  it "sort words in dictionary order" do
    array = ["Abakus", "Ananas", "Agrafka"]
    expect(array.makeBubble).to eq(["Abakus", "Agrafka", "Ananas"])
  end
end
