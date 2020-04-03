def is_valid_walk(walk)
  location = [0, 0]  
  step = 0
  
  for i in walk do
    step += 1
    
    case i
      when "n"
        location[0] += 1
      when "s"
        location[0] -= 1
      when "w"
        location[1] += 1
      when "e"
        location[1] -= 1
    end
  end
  
  if ((location[0] == 0) && (location[1] == 0) && (step == 10))
    return true
  else
    return false
  end
end