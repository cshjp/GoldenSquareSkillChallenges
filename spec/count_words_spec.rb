require "count_words"

describe "takes a string and returns the number of words" do
  context "given an empty string" do
    it "returns 0" do
      result = count_words("")
      expect(result).to eq 0
    end
  end

  context "given a string of 5 words" do
    it "returns 5" do
      result = count_words("yo my name is charlie")
      expect(result).to eq 5
    end
  end
end