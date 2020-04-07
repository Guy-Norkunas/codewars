require_relative "../lib/solve_puzzle.rb"

describe "solve_row" do 

    it 'should solve simple row' do
        a = solve_row(1, 4)
        expect(a).to eq([[4, 3, 2, 1]])
    end

    it 'should give multiple solutions to a row' do
        a = solve_row(1, 2)
        expect(a).to eq([[4, 1, 2, 3], [4, 2, 1, 3]])
    end
end