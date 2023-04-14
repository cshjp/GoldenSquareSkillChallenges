require "todotracker"

describe TodoTracker do
  describe "#add" do
    context "given a string" do
      it "returns an array with string inside" do
        todos = TodoTracker.new
        result = todos.add("get milk")
        expect(result).to eq ["get milk"]
      end
    end
    context "given an empty string" do
      it "fails" do
        todos = TodoTracker.new
        expect{ todos.add('') }.to raise_error "No todo added"
      end
      it "fails even with nil" do
        todos = TodoTracker.new
        expect{ todos.add(nil) }.to raise_error "No todo added"
      end
    end
  end
  describe "#see_list" do
    context "given universal array" do
      it "returns a todo if 1 in array" do
        todos = TodoTracker.new
        todos.add("get milk")
        result = todos.see_list
        expect(result).to eq "Todo: get milk"
      end
      it "returns a list of todos" do
        todos = TodoTracker.new
        todos.add("get milk")
        todos.add("get milk")
        todos.add("get milk")
        result = todos.see_list
        expect(result).to eq "Todos: get milk, get milk, get milk"
      end
    end
  end
  describe "#remove_from_list" do
    context "when given multiple entries" do
      it "removes the completed todo" do
        todos = TodoTracker.new
        todos.add("get milk")
        todos.add("collect shopping")
        todos.remove_from_list("collect shopping")
        expect(todos.see_list).to eq "Todo: get milk"
      end
      it "fails if no match" do
        todos = TodoTracker.new
        todos.add("get milk")
        todos.add("collect shopping")
        expect{ todos.remove_from_list("collect") }.to raise_error "Couldn't find within current Todos"
      end
    end
  end
end