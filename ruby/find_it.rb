def find_it(seq)
  for i in seq do  
    if (seq.count(i) % 2) != 0
      return i
    end
  end
end