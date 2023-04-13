require "check_for_todo"

describe "check_for_todo method" do
  context "given empty string" do
    it "returns false" do
      result = check_for_todo('')
      expect(result).to eq false
    end
  end

  context "given a string without #TODO" do
    it "returns false" do
      result = check_for_todo('this isnt important')
      expect(result).to eq false
    end
  end

  context "given a string with #TODO" do
  it "returns true" do
    result = check_for_todo('#TODO get milk')
    expect(result).to eq true
  end
end

context "given a string with #TODO at the end" do
it "returns true" do
  result = check_for_todo('bring in the milk #TODO')
  expect(result).to eq true
end
end
end