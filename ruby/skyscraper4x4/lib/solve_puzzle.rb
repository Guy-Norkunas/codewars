def solve_puzzle(clues)
    return "test"
end

def solve_row(num1, num2)
    return "test2"
end

#every value 1-4 has a #of items bigger than and a #of items smaller than
#track #of things already detected + amounts smaller and bigger

#2 error cases
#1 - You're at the amount of visibile sky scrapers you want and the rest to come are larger than most any of already used
#2 - You need more skyscrapers but you've encountered the 4
#PLACEMENT OF THE 4
#distance between initial number and 4
#start larger number at 4 count down
#constrain propagation

p solve_row(1, 4)