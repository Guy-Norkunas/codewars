def queue_time(customers, n)
  a = []
  a[n - 1] = nil
  a.fill(0)
  i = 0
  j = 0
  
  while (customers.inject(0, :+) != 0) || (a[-1] != 0)
    j = 0
    while a.include?(0)

      if customers[0]
        a[a.index(0)] = customers.shift
      else
        break
      end
    end
    a.sort!
    while j < a.length
      if a[j] > 0
        i += a[j]
        b = a[j]
      else
        j += 1
        next
      end
      break
    end
    a.map!{|item| item - b}
  end
  return i
end

p queue_time([2,2,3,3,4,4], 2)
p queue_time([1,2,3,4,5], 1)
p queue_time([2], 5)
p queue_time([1,2,3,4,5], 100)  