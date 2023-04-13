## 1. Describe the Problem

# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
has_todo = check_for_TODO(text)

# text is a string
# has_todo is a boolean
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
check_for_todo('')
has_todo => false

check_for_todo('this isnt important')
has_todo => false

check_for_todo('#TODO get milk')
has_todo => true

check_for_todo('bring in the milk #TODO')
has_todo => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

