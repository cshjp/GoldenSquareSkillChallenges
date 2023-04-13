require "grammar_checker"

describe "grammar_checker method" do
  context "given an empty string" do
    it "fails" do
      expect { grammar_checker('') }.to raise_error "Not a sentence."
    end
  end
  context "given a string with no capital or ." do
    it "false" do
      result = grammar_checker('this is a test')
      expect(result).to eq false
    end
  end
  context "given a string with both capital and ." do
    it "true" do
      result = grammar_checker('This is a test.')
      expect(result).to eq true
    end
  end
  context "given a string with only capital" do
    it "false" do
      result = grammar_checker('This is a test')
      expect(result).to eq false
    end
  end
  context "given a string with only a ." do
    it "false" do
      result = grammar_checker('this is a test.')
      expect(result).to eq false
    end
  end
  context "given a string with both capital and !" do
    it "true" do
      result = grammar_checker('This is a test!')
      expect(result).to eq true
    end
  end
end