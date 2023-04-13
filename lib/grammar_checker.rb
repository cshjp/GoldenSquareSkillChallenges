def grammar_checker(text)
  fail "Not a sentence." if text.empty?
  first_letter_is_capital = text[0] == text[0].upcase
  last_character_is_punctuation = ['.', '!', '?'].include? text[(text.length - 1)]
  if first_letter_is_capital && last_character_is_punctuation
    true
  else
    false
  end
end