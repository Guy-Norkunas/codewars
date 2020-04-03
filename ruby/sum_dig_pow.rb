def calc_sum(a)
  i = 0
  j = 1
  sum = 0

  a = a.to_s.split(//).map{|a| a.to_i}
  while (i < a.length)
    sum += a[i]**j
    i += 1
    j += 1
  end
  return sum
end

def sum_dig_pow(a, b)
  c = []

  while a <= b
    if (calc_sum(a) == a)
      c.append(a)
    end

    a += 1
  end

  return c
end