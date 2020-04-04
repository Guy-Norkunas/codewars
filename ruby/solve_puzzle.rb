# [x, y] ~ [-1, 0], [1, 0] etc 

def solve_puzzle(clues)
    i = 0
    while i < clues.length
        print "clue = #{clues[i]}, some i value = #{i % 4}\n"
        i += 1
    end
end

solve_puzzle([ 2, 2, 1, 3,
2, 2, 3, 1,
1, 2, 2, 3,
3, 2, 1, 3 ])