def unique_in_order(iterable)

 if iterable.empty?
   return []
 end
 
 a = Array.new
 a[0] = iterable[0]
 i = 0
 j = 0
 
 while i < iterable.length
   if a[j] != iterable[i]
     j += 1
     a[j] = iterable[i]
   end
  i += 1
 end
  
 return a
 
end

p unique_in_order([2,2,2,5,5,2,5,6,1,1,1,1])