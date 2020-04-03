def get_pins(observed)
  pins = [[1, 2, 3], 
          [4, 5, 6], 
          [7, 8, 9], 
          [nil, 0, nil]]
  temp = []
  stuff = []
  i = 0
  a = observed.split('')

  p pins.include?(1)
  p a

  if pins[0].include?(num)
    

  a.each { |val|
    num =  val.to_i
    


    temp << stuff
    stuff = []
    i += 1 
  }
  p temp
end




get_pins("123")