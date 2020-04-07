require_relative "../lib/solve_puzzle.rb"

Solutions = [{clues: [0, 0, 1, 2, 0, 2, 0, 0, 0, 3, 0, 0, 0, 1, 0, 0], solution: [[2, 1, 4, 3], [3, 4, 1, 2], [4, 2, 3, 1], [1, 3, 2, 4]]},
            {clues: [2, 2, 1, 3, 2, 2, 3, 1, 1, 2, 2, 3, 3, 2, 1, 3], solution: [[1, 3, 4, 2], [4, 2, 1, 3], [3, 4, 2, 1], [2, 1, 3, 4]]},
            {clues: [], solution: []}]

describe "solve_puzzle" do 
    it 'should return test' do
        a = solve_puzzle(Solutions[0][:clues])
        expect(a).to eq("test")
    end
end