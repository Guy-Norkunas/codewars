def get_sum(a,b)
  if a == b
    return a
  end
  
  num = a
  
  while a != b
    if a > b
      a -= 1
      num += a
    else
      a += 1
      num += a
    end
  
  end
  return num
end