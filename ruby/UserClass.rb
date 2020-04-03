class User
    attr_accessor :rank, :progress
    def initialize
        @rank = -8
        @progress = 0
    end
    
    def inc_progress(challenge_rank)
        if (challenge_rank < -8) || (challenge_rank > 8) || (challenge_rank == 0)
            raise "an error has occured"
        end

        if (rank < -8) || (rank > 8) || (rank == 0)
            raise "an error has occured"
        end

        if inclzero?(@rank, challenge_rank)
            difference = challenge_rank - @rank - 1
            if challenge_rank == -1 && @rank == 1
                difference = -1
            end
        else
            difference = challenge_rank - @rank
        end

        if difference > 0
            @progress += (difference**2 * 10)
            return self.progress_update
        end

        case difference
        when 0
            @progress += 3
            return self.progress_update
        when -1
            @progress += 1
            return self.progress_update
        end
    end

    def progress_update
        while @progress >= 100 && @rank < 8
            @progress -= 100
            if @rank == -1
                @rank += 2
                next
            end
            @rank += 1
        end
        if @rank == 8
            @progress = 0
        end
        return true
    end

    def inclzero?(num1, num2)
        arr = [num1, num2].sort
        i = arr[0]
        while i < arr[1]
            if i == 0
                return true
            end
            i += 1
        end
        return false
    end
end

test = User.new
test.rank = 1
p test.progress
test.inc_progress(-1)
p test.progress

