def decompose(n)
  solution = []
  num = n**2
  stuff(num, solution)
  return (solution << 1).reverse
end

def stuff(n, solution)
  i = n - 1
  remainder = 0

  if n == 0
    return true
  end

  while i > 0
    if check_root(i)
      remainder = n - i
      solution << check_root(i) 
      if (stuff(remainder, solution))
        break
      end
    end
    i -= 1
  end
  return true
end

def check_root(num)
  i = 0
  while i <= num
    if (i**2 == num)
      return i
    end
    i += 1
  end
end