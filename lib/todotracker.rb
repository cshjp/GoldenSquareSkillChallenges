class TodoTracker
  def initialize # keep array of todo inside
    @todos = []
  end

  def add(text) # text is a string that will be added to universal array ^
    fail "No todo added" if text.nil? || text.empty?
    @todos.push(text)
  end

  def remove_from_list(text)
    @counter = 0
    @deleted = 0
    @todos.map {|todo|
      if todo == text
        @todos.delete_at(@counter)
        @counter += 1
        @deleted += 1
      else
        @counter += 1
      end}
    fail "Couldn't find within current Todos" if @deleted == 0
  end

  def see_list
    if @todos.count == 1
      todo_list = @todos.join
      return "Todo: #{todo_list}"
    else
      todo_list = @todos.join(", ")
      return "Todos: #{todo_list}"
    end
  end
end