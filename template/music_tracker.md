# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._
# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class MusicTracker
  def initialize # holder for array
    @musiclist
  end

  def add(song) # song is a string
    # check song is a string/isnt empty
    # push into the array ^
  end

  def see_the_list
    # it prints the array of music listened to
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
music = MusicTracker
music.add("track")
result = music.see_the_list
expect(result).to eq "Music listened to: track"

# 2
music = MusicTracker
music.add("")
result = music.see_the_list
expect(result).to raise_error "No Music added"

# 3
music = MusicTracker
music.add(nil)
result = music.see_the_list
expect(result).to raise_error "No Music added"

# 4
music = MusicTracker
music.add("track")
music.add("track")
music.add("track")
result = music.see_the_list
expect(result).to eq "Music listened to: track, track, track"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

