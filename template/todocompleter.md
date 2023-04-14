# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.
_

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class TodoTracker
  def initialize # keep array of todo inside
    # ...
  end

  def add(text) # text is a string that will be added to universal array ^
    # add text to array
  end

  def see_list
    # turns the array above into a string listing each task
  end

  def remove_from_list(text)
    # takes the text given and finds it within the array and removes it
    # fails if text isnt in the array
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todos = TodoTracker.new
todos.add("get milk")
todos.add("collect shopping")
todos.remove_from_list("get milk")
expect(todos.see_list).to eq "Todo: collect shopping"

# 2
todos = TodoTracker.new
todos.add("get milk")
todos.add("collect shopping")
expect{ todos.remove_from_list('') }.to raise_error "Couldn't find within current Todos"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

