class TodoTracker
  def initialize # keep array of todo inside
    @todos = []
  end

  def add(text) # text is a string that will be added to universal array ^
    fail "No todo added" if text.nil? || text.empty?
    @todos.push(text)
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