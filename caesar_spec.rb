require_relative '../caesar'

describe Caesar do
    describe "#caesar_cipher" do

      before do
        cesar = Caesar.new(rotation)
        cesar.caesar_cipher(string)
      end
    end

    describe "encrypting" do
     it "encrypts correctly with alphabet downcase" do
       expect(Caesar.new(13).caesar_cipher("quick brown fox")).to eq("dhvpx oebja sbk")
     end
      
     it "encrypts correctly with alphabet downcase reverse" do
       expect(Caesar.new(13).caesar_cipher("dhvpx oebja sbk")).to eq("quick brown fox")
     end
      
     it "encrypts correctly with alphabet upcase" do
         expect(Caesar.new(3).caesar_cipher("ABC")).to eq("DEF")
     end
      
     it "encrypts correctly with alphabet upcase" do
       expect(Caesar.new(3).caesar_cipher("ABC")).to eq("DEF")
     end

     it "encrypts correctly with alphabet capitalized" do
       expect(Caesar.new(26).caesar_cipher("Cool ")).to eq("Cool ")
     end

     it "encrypts correctly with alphabet camelcase" do
       expect(Caesar.new(3).caesar_cipher("aBc")).to eq("dEf")
     end
   end
end
