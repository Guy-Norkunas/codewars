def is_isogram(string)
  i = 0
  j = 0
  while i < string.length
    j = i + 1
    while j < string.length
      if string.downcase[i] == string.downcase[j]
        return false
      end
      j += 1
    end
    i += 1
  end
  return true
end