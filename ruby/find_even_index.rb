def find_even_index(arr)
  i = j = k = 0
  fail_condition = -1

  while i < arr.length
    left = 0
    right = 0
    j = 0
    k = i + 1
    
    while j < i
      left += arr[j]
      j += 1
    end
    
    while k < arr.length
      right += arr[k]
      k += 1
    end
    
    if (right == left)
      return i
    end
    
    i += 1
  end
  return fail_condition
end