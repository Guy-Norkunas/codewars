def stuff(text, n)
  i = 1
  j = 0
  a = []

  while i < text.length
    a << text[i]
    i += 2
  end

  while j < text.length
    a << text[j]
    j += 2
  end

  if n > 1
    a = stuff(a.join, n-1)
  end

  return a

end

def stuff2(encrypted_text, n)
  i = encrypted_text.length/2
  j = 0
  a = []

  if n <= 0
    return encrypted_text
  end

  while a.length < encrypted_text.length
     a << encrypted_text[i]
     if a.length == encrypted_text.length
      break
    end
     a << encrypted_text[j]
     i += 1
     j += 1
  end

  if n > 1
    a = stuff2(a.join, n-1)
  end

  return a
end

def encrypt(text, n)
  if n <= 0
    return text
  end

  text = stuff(text, n)

  return text.join
end

def decrypt(encrypted_text, n)
  if n <= 0
    return encrypted_text
  end

  encrypted_text = stuff2(encrypted_text, n)

  return encrypted_text.join
end