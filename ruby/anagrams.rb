def anagrams(word, words)
  answer = []
  thing = word.split("").sort
  words.each { |stuff|
    if stuff.split("").sort == thing
      answer << stuff
    end
  }
  return answer
end

# def checkthing(thing, words)
#   words.each { |stuff|
#     for   
#   }

p anagrams("ab", ["yes", "no", "ba", "ab", "askjdf"])
p anagrams("foefet", "toffee")