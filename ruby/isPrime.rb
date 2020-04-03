def isPrime(num)  
  divisor = 3
  while (divisor**2 < num)
    if((num % divisor) == 0)
      return false
    end
    divisor += 1
  end    
  if (num < 2) || (num == 4)
    return false
  end
  return true
end

p isPrime(630)
p isPrime(777)
p isPrime(12539)
p isPrime(2)
p isPrime(-5)
p isPrime(-10)
p isPrime(1)
p isPrime(-12539)
p isPrime(1000000007)
p isPrime(1000000016531)