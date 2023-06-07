def check_for_todo(text)
  words = text.split(" ")
  if words.include?("#TODO")
    true
  else 
    false
  end
  # checks for todo
end