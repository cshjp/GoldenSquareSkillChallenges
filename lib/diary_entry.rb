class DiaryEntry
  def initialize(title, contents) 
    @title = title
    @contents = contents
    @furthest_word_read = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    return words.length
  end

  def reading_time(wpm)
    fail "wpm must be above zero" if wpm <= 0
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    no_word_we_can_read = wpm * minutes
    start_with = @furthest_word_read
    end_at = @furthest_word_read + no_word_we_can_read
    chunk = "#{words[start_with, end_at].join(' ')}"
    if end_at >= count_words
      @furthest_word_read = 0
    else
      @furthest_word_read = end_at
    end
    return chunk
  end

  private

  def words
    return @contents.split(" ")
  end
end

# `wpm` is an integer representing the number
# of words the user can read per minute
# `minutes` is an integer representing the
# number of minutes the user has to read
# Returns a string with a chunk of the contents that the user could read
# in the given number of minutes.
# If called again, `reading_chunk` should return the next chunk, skipping
# what has already been read, until the contents is fully read.
# The next call after that it should restart from the beginning.