def list_squared(m, n)
    solution = []
    if m == 1
        m += 1
        solution << [1, 1]
    end
    
    while m <= n
        temp = divisors(m)
        temp2 = sum_arr_squares(temp)
        temp3 = is_square(temp2)
        if temp3
            solution << [m, temp2]
        end
        m += 1
    end
    return solution
end

def divisors(val)
    i = 1
    arr = []
    while i**2 < val
        if val % i == 0
            arr << i
            arr << val/i
        end
        i += 1
    end
    return arr
end

def sum_arr_squares(arr)
    i = 0
    sum = 0
    while i < arr.length
        sum += arr[i]*arr[i]
        i += 1
    end
    return sum
end

def is_square(val)
    Math.sqrt(val) % 1 == 0
end


p divisors(250)
p list_squared(1, 250)
