require_relative '../lib/convert'

describe "the main function" do
  it "ceasar_cipher" do
   expect(main("Hello", 1)).to eq("Ifmmp")
  end
end

describe "the reroll2 function" do
  it "reroll downcases" do
    expect(reroll2(126)).to eq(100)
  end
end
