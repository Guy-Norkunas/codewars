def anagrams(word1, word2)
  if word1.split('').sort == word2.split('').sort
    return true
  end
  return false
end

p anagrams("toefef", "toffee")