require "reading_timer"

describe "reading_timer method" do
  context "if given an empty string" do
    it "return 0" do
      result = reading_timer('')
      expect(result).to eq 0
    end
  end

  context "if given a string of less than 200 words" do
    it "returns 1" do
      result = reading_timer("word ")
      expect(result).to eq 1
    end
  end
  
  context "if given a string of 200 words" do
    it "returns 1" do
      result = reading_timer("word " * 200)
      expect(result).to eq 1
    end
  end
    
  context "if given a string of 300 words" do
    it "returns 2" do
      result = reading_timer("word " * 300)
      expect(result).to eq 2
    end
  end
    
  context "if given a string of 10000 words" do
    it "returns 50" do
      result = reading_timer("word " * 10000)
      expect(result).to eq 50
    end
  end
end