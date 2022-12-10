# frozen_string_literal: true

# BEGIN
def anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def anagramm_filter(word, list)
  list
    .filter { |item| anagram? word, item }
end
# END
