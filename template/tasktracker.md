# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

# As a user
# So that I can keep track of my tasks
# I want a program that I can add todo tasks to and see a list of them.

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
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo = TodoTracker
todo.add(todotask)
todo.list = "Todo: #{todotask}"

# 2
todo = TodoTracker
todo.add("")
todo.list # fails

# 3
todo = TodoTracker
todo.add(todotask)
todo.add(todotask)
todo.add(todotask)
todo.list = "Todo: #{todotask}, #{todotask}, #{todotask}"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

