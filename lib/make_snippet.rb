def make_snippet(str)
  if str.split(' ').count > 5
    str_arr = str.split(' ')
    "#{str_arr[0..4].join(' ')}..."
  else
    str
  end
end