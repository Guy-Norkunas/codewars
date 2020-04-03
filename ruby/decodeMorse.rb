def decodeMorse(morseCode)
  a = morseCode.strip.split(/ /)
  b = []
  i = 0
  while i < a.length
    if a[i] == "" 
      b.append(" ")
      i += 1
    else
      b.append(MORSE_CODE[a[i]])
    end
    i += 1
  end
  return b.join
end