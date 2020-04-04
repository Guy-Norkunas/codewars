# [x, y] ~ [-1, 0], [1, 0] etc 

def solve_puzzle(clues)
    i = 0
    while i < clues.length
        print "clue = #{clues[i]}, some i value = #{i % 4}\n"
        i += 1
    end
end

def solve_row(start, end)
    