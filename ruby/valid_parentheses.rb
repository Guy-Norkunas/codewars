def valid_parentheses(string)
 num = 0
 i = 0
 while i < string.length
   num += string[i].count('(')
   num -= string[i].count(')')
   i += 1
   if num < 0
     return false
   end
 end
 if num == 0
   return true
 else
   return false
 end
end