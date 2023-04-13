def reading_timer(text)
  words = text.split(' ')
  (words.length / 200.to_f).ceil
end