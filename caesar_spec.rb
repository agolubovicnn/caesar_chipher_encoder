require_relative '../caesar'

describe Caesar do

  describe "#caesar_cipher" do
    context "sentence contain every alphabet letter" do
      it "returns encrypted string using rotation number 13" do
        expect(Caesar.new(13).caesar_cipher("The quick brown fox jumps over the lazy dog")).to eq("Gur dhvpx oebja sbk whzcf bire gur ynml qbt")
      end

      it "returns encrypted string in previous state using rotation number 13" do
        expect(Caesar.new(13).caesar_cipher("Gur dhvpx oebja sbk whzcf bire gur ynml qbt")).to eq("The quick brown fox jumps over the lazy dog")
      end
    end

    context "word contain alphabet downcase letter" do
      it "returns encrypted string using rotation number 3" do
        expect(Caesar.new(3).caesar_cipher("abc")).to eq("def")
      end
    end

    context "word contain alphabet upcase letter" do
      it "returns encrypted string using rotation number 3" do
        expect(Caesar.new(3).caesar_cipher("ABC")).to eq("DEF")
      end
    end

    context "word contain capital alphabet letter" do
      it "returns encrypted string using rotation number 26" do
        expect(Caesar.new(26).caesar_cipher("Cool ")).to eq("Cool ")
      end

      context "word contain camelcase alphabet letter" do
        it "returns encrypted string using rotation number 3" do
          expect(Caesar.new(3).caesar_cipher("aBc")).to eq("dEf")
        end
      end
    end
  end
end
