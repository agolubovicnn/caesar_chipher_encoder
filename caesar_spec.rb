require_relative '../caesar'

RSpec.describe "Caesar" do

  it "encrypts correctly with alphabet downcase" do
    expect(Caesar.new(3, "abc").caesar_cipher).to eq("def")
  end

  it "encrypts correctly with alphabet upcase" do
    expect(Caesar.new(3, "ABC").caesar_cipher).to eq("DEF")
  end

  it "encrypts correctly with alphabet capitalized" do
    expect(Caesar.new(3, "Abc").caesar_cipher).to eq("Def")
  end

  it "encrypts correctly with alphabet camelcase" do
    expect(Caesar.new(3, "aBc").caesar_cipher).to eq("dEf")
  end

end
