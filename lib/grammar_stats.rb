class GrammarStats
  def initialize
    @number_of_passes = 0
    @number_of_fails = 0
  end

  def check(text)   
    fail "Not a sentence." if text.empty?
    first_letter_is_capital = text[0] == text[0].upcase
    last_character_is_punctuation = ['.', '!', '?'].include? text[(text.length - 1)]
    if first_letter_is_capital && last_character_is_punctuation
      @number_of_passes += 1
      true
    else
      @number_of_fails += 1
      false
    end
  end

  def percentage_good
    fail "No good grammar!" if @number_of_passes == 0
    decimal = (@number_of_passes.to_f) / (@number_of_passes + @number_of_fails)
    return percentage = (decimal*100).to_i
  end
end