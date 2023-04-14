require "grammar_stats"

describe GrammarStats do
  context "when check is given nothing" do
    it "fails as there isnt any grammar to check" do
      grammar = GrammarStats.new
      expect{ grammar.check("") }.to raise_error "Not a sentence."
    end
  end
  context "when given a grammatically correct sentence" do
    it "returns true" do
      grammar = GrammarStats.new
      result = grammar.check("This sentence is correct.")
      expect(result).to eq true
    end
  end
  describe "#percentage_good" do
    context "given multiple checks" do
      it "returns the percentage of correct grammar" do
        grammar = GrammarStats.new
        grammar.check("This is good grammar.")
        result = grammar.percentage_good
        expect(result).to eq 100
      end
      it "returns the percentage of both good and bad grammar" do
        grammar = GrammarStats.new
        grammar.check("This is good grammar.")
        grammar.check("this is bad grammar")
        grammar.check("This is even better.")
        result = grammar.percentage_good
        expect(result).to eq 66
      end
    end
    context "given only bad grammar" do
      it "fails" do
        grammar = GrammarStats.new
        grammar.check("This is good grammar")
        grammar.check("this is bad grammar")
        grammar.check("This is even better")
        expect{ grammar.percentage_good }.to raise_error "No good grammar!"
      end
    end
  end
end

# Returns as an integer the percentage of texts checked so far that passed
# the check defined in the `check` method. The number 55 represents 55%.