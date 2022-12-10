# frozen_string_literal: true

def make_censored(text, stop_words)
  # BEGIN
  placeholder = '$#%!'
  words = text.split
  result = []
  words.each do |word|
    result << if stop_words.include? word
                placeholder
              else
                word
              end
  end
  result.join(' ')
  # END
end
