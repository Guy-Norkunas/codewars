def decompose(n)
  solution = [n]
  num = n**2
  stuff(num, solution)
  return solution
end

def stuff(n, solution)
  while n > 0
    if check_root(n)
      
      
end

def check_root(num)
  i = 0
  while i <= num
    if (i**2 == num)
      return i
    end
    i += 1
  end
  return false
end

p check_root(0)
p decompose(1)
p decompose(11)
p decompose(50)