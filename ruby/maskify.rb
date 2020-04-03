def maskify(cc)
  i = 0
  until i >= (cc.length - 4)
    cc[i] = "#"
    i += 1
  end
  return cc
end